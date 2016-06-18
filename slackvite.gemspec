lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slackvite/version'

Gem::Specification.new do |s|
  s.name          = "slackvite"
  s.version       = Slackvite::VERSION
  s.date          = "2016-06-17"
  s.summary       = "Make it easy to invite users to your Slack community team"
  s.authors       = ["Matthew Rosendin"]
  s.email         = "matt@roseware.io"
  s.homepage      = "http://github.com/rosendin/slackvite"
  s.license       = "MIT"

  s.files         = Dir.glob('{lib}/**/*')

  s.add_runtime_dependency "http", "~> 2.0.1"
end
