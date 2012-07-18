require 'rake'

desc "install the dot files into user's home directory"
task :install do
  %w[vimrc vimstatus tmux.conf bash_profile zshrc].each do |file|

    path = File.join(ENV['HOME'], ".#{file}")

    if File.exist?(path) && !File.symlink?(path)
      puts "File ~/.#{file} already exists, please delete first."
      exit
    end

    if File.symlink?(path)
      puts "Deleting symlink ~/.#{file}"
      system %Q{rm -rf $HOME/.#{file}}
    end

    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}

  end
end

