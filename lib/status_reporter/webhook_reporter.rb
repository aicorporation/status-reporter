require 'httparty'
require 'lib/status_reporter/base_reporter'

module StatusReporter
  class WebhookReporter < BaseReporter

    attr_accessor :success_url, :failure_url, :status_url
  
    def report_success params=nil
      HTTParty.post(success_url, {body: params}) if success_url
    end
  
    def report_failure params=nil
      HTTParty.post(failure_url, {body: params}) if failure_url
    end
  
    def report_status params=nil
      HTTParty.post(status_url, {body: params}) if status_url
    end
  end
end
