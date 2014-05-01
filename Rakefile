require 'rspec/core/rake_task'
require File.dirname(__FILE__) + '/lib/broadstreet/version'

task :build => :test do
  system 'gem build broadstreet.gemspec'
end

task :release => :build do
  # tag and push
  system "git tag v#{Broadstreet::VERSION}"
  system "git push origin --tags"
  # push the gem
  system "gem push broadstreet-#{Broadstreet::VERSION}.gem"
end

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = 'spec/**/*_spec.rb'
end
