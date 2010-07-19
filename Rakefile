require 'rake'
require 'spec/rake/spectask'

task :default => :last

task :last do
     last_file = get_latest_touched_file
     sh "spec -c -f specdoc #{last_file.path}" if last_file
end

def get_latest_touched_file
     cur_last_file = nil
     cur_last_time = 0
     Dir.entries("test").each {|f| 
     
       unless f =~ /^\.\.?/
         file_name = "test/#{f}"
         cur_file = File.new(file_name)

         if cur_file.mtime.to_i > cur_last_time
           cur_last_file = cur_file 
           cur_last_time = cur_file.mtime.to_i
         end
       end
     }

     cur_last_file
end
