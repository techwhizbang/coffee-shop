require 'rspec/core/rake_task'

desc "Runs only the unit specs"
RSpec::Core::RakeTask.new("spec:units") do |t|
  t.pattern = "./spec/**/*_spec.rb"
  t.rspec_opts = "--tag ~integration --tag ~slow --profile" #skip integration specs
end

desc "Runs only the integration specs"
RSpec::Core::RakeTask.new("spec:integrations") do |t|
  t.pattern = "./spec/integration/**/*_spec.rb"
  t.rspec_opts = "--tag integration --profile" #skip unit specs
end

desc "Run all of the specs"
RSpec::Core::RakeTask.new(:spec)

task :default => :spec