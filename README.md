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

Installation
------------

	cd ~/Work/
	git clone https://github.com/jamiemill/dotfiles.git
	cd dotfiles
	rake install	

Vim
---

Adding a new plugin:
- add the plugin as a submodule of this repo, inside `vim-plugins/`.
