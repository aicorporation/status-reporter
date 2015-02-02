require "spec_helper"

RSpec.describe WebhookReporter do
  context "with all callback URLs specified" do
    let(:reporter) { FactoryGirl.build :webhook_reporter }
    
    it "should report success" do
      expect_any_instance_of(HTTParty).to receive(:post)
      reporter.report_success
    end
  
    it "should report failure" do
      expect_any_instance_of(HTTParty).to receive(:post)
      reporter.report_failure
    end
  
    it "should report status" do
      expect_any_instance_of(HTTParty).to receive(:post)
      reporter.report_status
    end
    
    context "with params to send" do
      let(:params) {
        the_params = {"foo" => "bar"}
        return the_params
      }
    
      it "should report success" do
        expect_any_instance_of(HTTParty).to receive(:post)
        reporter.report_success params
      end
    
      it "should report failure" do
        expect_any_instance_of(HTTParty).to receive(:post)
        reporter.report_failure params
      end
    
      it "should report status" do
        expect_any_instance_of(HTTParty).to receive(:post)
        reporter.report_status params
      end
    end
  end
end