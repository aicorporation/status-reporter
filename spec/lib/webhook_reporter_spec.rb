require "spec_helper"

RSpec.describe StatusReporter::WebhookReporter do
  context "with all callback URLs specified" do
    let(:reporter) { FactoryGirl.build :webhook_reporter }
    
    it "should report success" do
      expect(HTTParty).to receive(:post).with(reporter.success_url, {body: nil})
      reporter.report_success
    end
  
    it "should report failure" do
      expect(HTTParty).to receive(:delete).with(reporter.failure_url, {body: nil})
      reporter.report_failure
    end
  
    it "should report status" do
      expect(HTTParty).to receive(:post).with(reporter.status_url, {body: nil})
      reporter.report_status
    end
    
    context "with params to send" do
      let(:params) {
        the_params = {"foo" => "bar"}
        return the_params
      }
    
      it "should report success" do
        expect(HTTParty).to receive(:post).with(reporter.success_url, {body: params})
        reporter.report_success params
      end
    
      it "should report failure" do
        expect(HTTParty).to receive(:delete).with(reporter.failure_url, {body: params})
        reporter.report_failure params
      end
    
      it "should report status" do
        expect(HTTParty).to receive(:post).with(reporter.status_url, {body: params})
        reporter.report_status params
      end
    end
  end
end
