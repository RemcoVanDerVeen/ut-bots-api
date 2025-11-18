ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "factory_bot_rails"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Use FactoryBot instead of fixtures
  include FactoryBot::Syntax::Methods

  # Disable fixtures
  self.use_transactional_tests = true

  # Add more helper methods to be used by all tests here...
end
