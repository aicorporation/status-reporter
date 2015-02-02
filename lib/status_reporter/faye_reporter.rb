require 'faye'
require 'lib/status_reporter/base_reporter'

class FayeReporter < BaseReporter
  
  def initialize faye_channel
    @faye_channel = faye_channel
    @faye_client = Faye::Client.new
  end
  
  def report_success params=nil
    @faye_client.publish @faye_channel, params
  end
  
  def report_failure params=nil
    @faye_client.publish @faye_channel, params
  end
  
  def report_status params=nil
    @faye_client.publish @faye_channel, params
  end
end