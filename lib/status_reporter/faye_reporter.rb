require 'faye'
require 'status_reporter/base_reporter'

module StatusReporter
  class FayeReporter < StatusReporter::BaseReporter
  
    attr_accessor :faye_channel
  
    def initialize
      @faye_client = Faye::Client.new
    end
  
    def report_success params=nil
      @faye_client.publish faye_channel, params
    end
  
    def report_failure params=nil
      @faye_client.publish faye_channel, params
    end
  
    def report_status params=nil
      @faye_client.publish faye_channel, params
    end
  end
end