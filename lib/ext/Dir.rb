class Dir
  def Dir.latest_touched_file(dir_path)
    cur_last_file = nil
    cur_last_time = 0
    Dir.entries(dir_path).each {|f| 
      
      unless File.directory?(f)
        file_name = "#{dir_path}/#{f}"
        cur_file = File.new(file_name)

        if cur_file.mtime.to_i > cur_last_time
          cur_last_file = cur_file 
          cur_last_time = cur_file.mtime.to_i
        end
      end
    }

    cur_last_file
  end
end
