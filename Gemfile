source "https://rubygems.org"

ruby "3.4.7"

# Rails 8 with modern defaults
gem "rails", "~> 8.1"

# Core dependencies
gem "pg", "~> 1.1"
gem "puma", ">= 6.4"
gem "propshaft"  # Modern asset pipeline
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false

# Frontend
gem "simple_form"

# Code quality
gem "rubocop-rails-omakase", require: false

group :development, :test do
  gem "debug", platforms: %i[mri windows x64_mingw]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
