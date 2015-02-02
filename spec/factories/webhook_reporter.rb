FactoryGirl.define do
  factory :webhook_reporter do
    success_url "http://example.com"
    failure_url "http://example.com"
    status_url "http://example.com"
  end
end
