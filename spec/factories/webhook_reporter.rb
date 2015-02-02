FactoryGirl.define do
  factory :webhook_reporter do
    success_url "http://example.com/success"
    failure_url "http://example.com/failure"
    status_url "http://example.com/status"
  end
end
