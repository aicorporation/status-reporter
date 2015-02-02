require 'httparty'
require 'lib/status_reporter/base_reporter'

class WebhookReporter < BaseReporter

  attr_accessor :success_url, :failure_url, :status_url

  def initialize the_success_url=nil, the_failure_url=nil, the_status_url=nil
    success_url = the_success_url
    failure_url = the_failure_url
    status_url = the_status_url
  end
  
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
