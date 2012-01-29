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
