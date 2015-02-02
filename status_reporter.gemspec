Gem::Specification.new do |s|
  s.name        = 'status-reporter'
  s.version     = '0.0.1'
  s.date        = '2015-02-02'
  s.summary     = 'StatusReporter'
  s.description = 'Gem for reporting on the status of things. Webhooks, pubsub, and more.'
  s.authors     = ['Chris Kilding']
  s.email       = 'chris@chriskilding.com'
  s.files       = ['lib/status_reporter.rb']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.1'
  s.add_development_dependency "factory_girl", "~> 4.3"
  
  s.add_runtime_dependency 'activesupport', '~> 4.0'
  s.add_runtime_dependency 'httparty', '~> 0.13'
  s.add_runtime_dependency "faye", "~> 1.0"
  
  # 0.3.0 was removed from Rubygems, but something needs it,
  # so ensure we use a higher version.
  s.add_runtime_dependency 'thread_safe', '~> 0.3'
end
