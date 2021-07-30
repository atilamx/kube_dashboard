require 'capybara/rspec'
require 'capybara/rails'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: {
      w3c: false,
      args: %w(headless disable-gpu no-sandbox)
    }
  )

  Capybara::Selenium::Driver.new app,
                                 browser: :chrome,
                                 desired_capabilities: capabilities
end

Capybara.default_driver = :headless_chrome
#Capybara.default_driver = :selenium_chrome

Capybara.run_server = true
Capybara.default_max_wait_time

RSpec.configure do |config|

  config.include Capybara::DSL

  # config.include AuthenticationHelper
  # config.include DebugHelper

  config.use_transactional_fixtures = false

  config.before(:suite) do
    #DatabaseCleaner.clean_with :truncation
    DatabaseCleaner.strategy = :deletion
  end

  # config.around(:each) do |example|
  #   DatabaseCleaner.cleaning do
  #     example.run
  #   end
  # end

  config.infer_spec_type_from_file_location!
end
