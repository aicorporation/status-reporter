require "spec_helper"

RSpec.describe StatusReporter::FayeReporter do
  let(:reporter) { FactoryGirl.build :faye_reporter }
  
  let(:params) {
    the_params = {"foo" => "bar"}
    return the_params
  }
  
  it "should report success" do
    expect_any_instance_of(Faye::Client).to receive(:publish)
    reporter.report_success params
  end

  it "should report failure" do
    expect_any_instance_of(Faye::Client).to receive(:publish)
    reporter.report_failure params
  end

  it "should report status" do
    expect_any_instance_of(Faye::Client).to receive(:publish)
    reporter.report_status params
  end
end