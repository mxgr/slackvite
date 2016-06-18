require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)


task default: [:test]

task :test do
  puts "running test"
end

task :console do
  exec "irb -r slackvite -I ./lib"
end