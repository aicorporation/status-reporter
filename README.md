# status-reporter

![Build status](https://travis-ci.org/themasterchef/status-reporter.svg?branch=master)

Gem for reporting on the status of things. Webhooks, pubsub, and more.

## Installation

In your Gemfile:

    gem 'status-reporter', github: 'themasterchef/status-reporter'

## Usage


    require 'status_reporter'

The StatusReporter module is the only thing you need to require. It contains all the subclasses.

Then instantiate one of the subclasses and start using it. Here is an example:

    reporter = StatusReporter::WebhookReporter.new
    reporter.success_url = "http://example.com/success"
    reporter.failure_url = "http://example.com/failure"
    reporter.status_url "http://example.com/status"
  
    params = {"file_location" => "/path/to/my/file.csv"}
  
    reporter.report_success(params)

## API structure

All implementors of the BaseReporter implement the same methods:

- `report_success(params=nil)`
- `report_failure(params=nil)`
- `report_status(params=nil)`

## License

Apache 2.0 (see LICENSE file for more)