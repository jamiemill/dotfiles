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

  puts "linking custom snipmate snippets"
  dotvimdir = File.join(ENV['HOME'], ".vim")
  if !File.exist?(dotvimdir)
    puts "~/.vim does not exist yet, you must not have installed pathogen!"
    exit
  end
  snippetsdir = File.join(dotvimdir, "snippets")
  if File.symlink?(snippetsdir)
    system %Q{rm -rf #{snippetsdir}}
  end
  system %Q{ln -s "$PWD/vim-snippets" "#{snippetsdir}"}

end

