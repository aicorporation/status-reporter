require 'faye'
require 'status_reporter/base_reporter'

module StatusReporter
  class FayeReporter < StatusReporter::BaseReporter

    attr_accessor :faye_channel, :faye_client

    def initialize faye_channel=nil, faye_client=nil
      @faye_channel = faye_channel 
      @faye_client  = faye_client || Faye::Client.new
    end
  
    def report_status params=nil
      @faye_client.publish(@faye_channel, params) if @faye_channel
    end
  end
end