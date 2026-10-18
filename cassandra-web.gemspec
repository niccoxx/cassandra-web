# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'cassandra-web'
  s.version       = '0.6.0'
  s.authors       = ['Bulat Shakirzyanov']
  s.email         = ['bulat.shakirzyanov@datastax.com']
  s.homepage      = 'https://github.com/avalanche123/cassandra-web'
  s.summary       = %q{A simple web ui for Apache Cassandra}
  s.description   = %q{Apache Cassandra web interface using Ruby, Event-machine, AngularJS, Server-Sent-Events and DataStax Ruby driver for Apache Cassandra}
  s.license       = 'MIT'
  s.files         = Dir['app/**/*.*', 'app.rb', 'README.md', 'bin/*']
  s.bindir        = 'bin'
  s.executables << 'cassandra-web'

  s.required_ruby_version = '>= 3.0'

  s.add_runtime_dependency 'cassandra-driver', '~> 3.2', '>= 3.2.5'
  s.add_runtime_dependency 'thin',             '~> 2.0'
  s.add_runtime_dependency 'rack-cors',        '>= 2.0', '< 4'
  s.add_runtime_dependency 'rack-parser',      '~> 0.7'
  s.add_runtime_dependency 'sinatra',          '~> 4.0'
  s.add_runtime_dependency 'lz4-ruby',         '~> 0.3'
  # extracted from Ruby's stdlib (bigdecimal in 3.4, SortedSet in 3.0), still required by cassandra-driver
  s.add_runtime_dependency 'bigdecimal',       '~> 3.1'
  s.add_runtime_dependency 'sorted_set',       '~> 1.0'

  s.add_development_dependency 'bundler', '>= 2.0'
  s.add_development_dependency 'rake', '~> 13.0'
end
