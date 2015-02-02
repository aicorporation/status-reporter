require 'status_reporter'
require 'rspec'
require 'factory_girl'
FactoryGirl.find_definitions

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.order = :random
end