require 'rake'
require 'spec/rake/spectask'
$LOAD_PATH << './lib/ext'
require 'Dir.rb'

task :default => :all

task :last do
     last_file = Dir.latest_touched_file("test")
     sh "spec -c -f specdoc #{last_file.path}" if last_file
end

Spec::Rake::SpecTask.new(:all) do |t|
  t.spec_files = FileList['test/*spec.rb']
  t.spec_opts << '-c --format specdoc'
end

