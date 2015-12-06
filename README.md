My Dotfiles
===========

Dotfiles will be symlinked into home so that all edits are fed back to this
repo.


Dependencies
------------

Requires [pathogen.vim](https://github.com/tpope/vim-pathogen) added to
.vim/autoload, which, at the time of writing, can be installed like:

	mkdir -p ~/.vim/autoload ~/.vim/bundle; \
	curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

Tagbar requires exuberent ctags, installable with `brew install ctags`.
This replaces the version of ctags included on OSX by default.

Also need jsctags for javascript support. Install by cloning

    git clone https://github.com/mozilla/doctorjs/
    cd doctorjs
    git submodule init && git submodule update
    make install

For coffeescript support: https://github.com/lukaszkorecki/CoffeeTags

Then ensure you run `source ~/.profile` in all open terminal windows,
including those running vim, to get it to work.

Uses ruby-install and chruby for ruby version management. Install with:
    brew install ruby-install
    brew install chruby

Then if you need to install a gem, `gem install` can be used without sudo
and won't be touching the system installation.


Installation
------------

This repo must be cloned to ~/dotfiles as the pathogen use in vimrc
is hard-coded to look in ~/dotfiles/vim-plugins for its stuff.

	cd ~
	git clone https://github.com/jamiemill/dotfiles.git
	cd dotfiles
	./install.sh

Making changes
--------------

  1. Make the necessary changes
  2. Commit and push back to GitHub

Receiving changes
-----------------

  1. On all other machines run `./update.sh`. This will pull down the
     latest version and re-run the installer.

Maintenance
-----------

### Vim

Adding a new plugin:
  - add the plugin as a submodule of this repo, inside `vim-plugins/`, e.g.
  `git submodule add https://github.com/mikewest/vimroom.git vim-plugins/vimroom`

Disabling a plugin - append '~' to the plugin directory:
  - `mv vim-plugins/some-plugin vim-plugins/some-plugin~`

Removing a plugin (since git v1.8.5.2):
  - `git rm vim-plugins/some-plugin`

### ZSH

Add custom plugins in `oh-my-zsh-custom/plugins` and then run `./install.sh` again
to make it get copied to `oh-my-zsh/custom` where it will be found.

Add custom themes to `oh-my-zsh-custom` and run `./install.sh` again.


### Fetching latest versions of submodules (e.g. Vim plugins)

    ./fetch-latest-plugins.sh

Then if everything looks OK:

    git commit -a
    git push

Then run `./update.sh` on all other machines.

### Replacing a submodule with a different version

  1. edit .gitmodules to change the URL of the submodule
  2. run `git submodule sync` which will update the internal location
     references or something
  3. `cd {submodule dir}`
  4. `git fetch && git reset --hard origin/master`
  5. `cd -`
  6. `git add .gitmodules {submodule dir}`
  7. commit and push

