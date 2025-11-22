class XbotsImportsController < ApplicationController
  # GET /xbots_imports/new
  def new
    # Show the import form
  end

  # POST /xbots_imports
  def create
    uploaded_file = params[:xbots_import][:file]
    configuration_name = params[:xbots_import][:configuration_name]

    if uploaded_file.nil?
      redirect_to new_xbots_import_path, alert: "Please select a file to import"
      return
    end

    # Read file with proper encoding handling
    # UT INI files are often in Windows-1252 or ISO-8859-1, not UTF-8
    file_content = uploaded_file.read

    # Try to force UTF-8 encoding, replacing invalid characters
    file_content = file_content.force_encoding("UTF-8")
    unless file_content.valid_encoding?
      # If not valid UTF-8, try Windows-1252 (common for UT files)
      # Convert to UTF-8, replacing any invalid characters with '?'
      file_content = file_content.force_encoding("Windows-1252").encode("UTF-8", invalid: :replace, undef: :replace, replace: "?")
    end

    service = XbotsImportService.new(file_content, configuration_name: configuration_name)
    result = service.import

    if result[:success]
      xbots_configuration = result[:xbots_configuration]
      botlists_count = result[:botlists].count
      bots_count = result[:botlists].sum { |bl| bl.bots.count }

      notice_message = "Successfully imported #{botlists_count} botlist(s) with #{bots_count} bot(s) into configuration '#{xbots_configuration.name}'"

      if result[:errors].any?
        # Store full errors in cache to avoid cookie overflow
        cache_key = "xbots_import_errors_#{SecureRandom.hex(8)}"
        Rails.cache.write(cache_key, result[:errors], expires_in: 1.hour)

        flash[:warning] = "#{result[:errors].count} error(s) occurred during import. See details below."
        flash[:import_errors_key] = cache_key
      end

      redirect_to xbots_configuration_path(xbots_configuration), notice: notice_message
    else
      # For failed imports, show first 20 errors in flash
      error_count = result[:errors].count
      flash[:alert] = "Import failed with #{error_count} error(s). #{error_count > 20 ? 'Showing first 20. Check Rails log for full details.' : 'See details below.'}"
      flash[:import_errors] = result[:errors].first(20)
      redirect_to new_xbots_import_path
    end
  rescue StandardError => e
    redirect_to new_xbots_import_path, alert: "Import failed: #{e.message}\n\n#{e.backtrace.first(5).join("\n")}"
  end
end
