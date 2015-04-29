FactoryGirl.define do
  factory :webhook_reporter, class: StatusReporter::WebhookReporter do
    success_url "http://example.com/success"
    failure_url "http://example.com/failure"
  end
end
