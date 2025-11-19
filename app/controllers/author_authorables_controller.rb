class AuthorAuthorablesController < ApplicationController
  before_action :set_author_authorable, only: %i[ show edit update destroy ]

  # GET /author_authorables or /author_authorables.json
  def index
    @author_authorables = AuthorAuthorable.all
  end

  # GET /author_authorables/1 or /author_authorables/1.json
  def show
  end

  # GET /author_authorables/new
  def new
    @author_authorable = AuthorAuthorable.new
  end

  # GET /author_authorables/1/edit
  def edit
  end

  # POST /author_authorables or /author_authorables.json
  def create
    @author_authorable = AuthorAuthorable.new(author_authorable_params)

    respond_to do |format|
      if @author_authorable.save
        format.html { redirect_to author_authorable_url(@author_authorable), notice: "Author authorable was successfully created." }
        format.json { render :show, status: :created, location: @author_authorable }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @author_authorable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /author_authorables/1 or /author_authorables/1.json
  def update
    respond_to do |format|
      if @author_authorable.update(author_authorable_params)
        format.html { redirect_to author_authorable_url(@author_authorable), notice: "Author authorable was successfully updated." }
        format.json { render :show, status: :ok, location: @author_authorable }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @author_authorable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_authorables/1 or /author_authorables/1.json
  def destroy
    @author_authorable.destroy

    respond_to do |format|
      format.html { redirect_to author_authorables_url, notice: "Author authorable was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_authorable
      @author_authorable = AuthorAuthorable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def author_authorable_params
      params.require(:author_authorable).permit(:author_id, :authorable_type, :authorable_id)
    end
end
