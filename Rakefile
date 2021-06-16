require "rspec/core/rake_task"
require "sinatra/activerecord/rake"
require_relative "./lib/domain_modeling_with_activerecord"

desc "opens a console" 
task :console do 
  Pry.start
end

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
