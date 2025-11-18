source "https://rubygems.org"

ruby "3.4.7"

# Rails 8 with modern defaults
gem "rails", "~> 8.1"

# Core dependencies
gem "pg", "~> 1.6.2"
gem "puma", "~> 7.1"
gem "propshaft"  # Modern asset pipeline
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false

# Frontend
gem "simple_form"

group :development do
  gem "web-console"
  gem "debug"

  gem "rubocop", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-factory_bot", require: false

  gem "factory_bot_rails"
  gem "faker"

  group :test do
  end
end
