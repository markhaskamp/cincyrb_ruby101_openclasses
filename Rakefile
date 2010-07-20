require 'rake'
require 'spec/rake/spectask'
require 'lib/ext/Dir.rb'

desc "all"
task :default => :all

desc "Run tests for most recently touched file in the test directory."
task :last do
     last_file = Dir.latest_touched_file("test")
     sh "spec -c -f specdoc #{last_file.path}" if last_file
end

desc "Run all the tests"
Spec::Rake::SpecTask.new(:all) do |t|
  t.spec_files = FileList['test/*spec.rb']
  t.spec_opts << '-c --format specdoc'
end

