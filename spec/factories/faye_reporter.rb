FactoryGirl.define do
  factory :faye_reporter, class: StatusReporter::FayeReporter do
    faye_channel '/chan'
  end
end
