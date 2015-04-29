require 'httparty'
require 'status_reporter/base_reporter'

module StatusReporter
  class WebhookReporter < StatusReporter::BaseReporter
    include HTTParty
    default_timeout 30

    attr_accessor :success_url, :failure_url

    def initialize success_url=nil, failure_url=nil
      @success_url, @failure_url = success_url, failure_url
    end  
  
    def report_success params=nil
      HTTParty.put(@success_url, {body: params}) if @success_url
    end
  
    def report_failure params=nil
      HTTParty.delete(@failure_url, {body: params}) if @failure_url
    end
  
  end
end
