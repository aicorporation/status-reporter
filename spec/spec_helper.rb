require 'status_reporter'
require 'rspec'
require 'factory_girl'
FactoryGirl.find_definitions

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.mock_with :rspec
  config.order = :random
end