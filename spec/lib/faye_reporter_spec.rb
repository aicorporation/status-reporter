require "spec_helper"

RSpec.describe StatusReporter::FayeReporter do
  let(:reporter) { FactoryGirl.build :faye_reporter }
  
  it "should report success" do
    expect_any_instance_of(Faye::Client).to receive(:publish).with(reporter.faye_channel, nil)
    reporter.report_success
  end

  it "should report failure" do
    expect_any_instance_of(Faye::Client).to receive(:publish).with(reporter.faye_channel, nil)
    reporter.report_failure
  end

  it "should report status" do
    expect_any_instance_of(Faye::Client).to receive(:publish).with(reporter.faye_channel, nil)
    reporter.report_status
  end
  
  context "with params to send" do
    let(:params) {
      the_params = {"foo" => "bar"}
      return the_params
    }
  
    it "should report success" do
      expect_any_instance_of(Faye::Client).to receive(:publish).with(reporter.faye_channel, params)
      reporter.report_success params
    end

    it "should report failure" do
      expect_any_instance_of(Faye::Client).to receive(:publish).with(reporter.faye_channel, params)
      reporter.report_failure params
    end

    it "should report status" do
      expect_any_instance_of(Faye::Client).to receive(:publish).with(reporter.faye_channel, params)
      reporter.report_status params
    end
  end
end