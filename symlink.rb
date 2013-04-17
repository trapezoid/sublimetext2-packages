#!/usr/bin/ruby
require 'fileutils'
#create symbolic link
d = Dir.glob('*').reject{|x| x == __FILE__}
target = File.expand_path "~/Library/Application Support/Sublime Text 2"
FileUtils.mkdir_p target
d.each do |f|
    file = File.expand_path f
    FileUtils.symlink file, File.expand_path(f, target)
end