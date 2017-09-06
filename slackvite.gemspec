lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slackvite/version'

Gem::Specification.new do |s|
  s.name          = "slackvite"
  s.version       = Slackvite::VERSION
  s.date          = "2017-09-06"
  s.summary       = "Make it easy to invite users to your Slack community team"
  s.authors       = ["Matthew Rosendin", "Maxime Germain"]
  s.email         = "matt@roseware.io"
  s.homepage      = "http://github.com/mxgr/slackvite"
  s.license       = "MIT"

  s.files         = Dir.glob('{lib}/**/*')

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake', '~> 11.1.2'
  s.add_development_dependency 'rspec', "~> 3.2"
  s.add_runtime_dependency "http", "~> 2.0"
  s.add_runtime_dependency "json"
end
