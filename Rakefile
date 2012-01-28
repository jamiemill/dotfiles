require 'rake'

desc "install the dot files into user's home directory"
task :install do
  %w[vimrc].each do |file|
    path = File.join(ENV['HOME'], ".#{file}")
    if File.exist?(path) || File.symlink?(path)
      puts "Deleting ~/.#{file}"
      system %Q{rm -rf "$HOME/.#{file}"}
    end
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end

