" NOTE: a lot of this is pinched from Janus.


" Load plugins pathogen-style.
" TODO: use erb for this and set this path dynamically to point at this repo?
call pathogen#infect('~/Work/dotfiles/vim-plugins')

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

syntax on
set hlsearch

" Always display the status line
set laststatus=2

" Numbers
set number
set numberwidth=5

" case only matters with mixed case expressions
set ignorecase
set smartcase

" Tags
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
set tags=./tags;

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

colorscheme molokai

"for iterm2 in 256 colour mode
set t_Co=256

set noerrorbells
set visualbell

set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set nowrap

"Enable this to show tab and EOL chars visually
"set list listchars=tab:▸\ ,eol:¬,trail:·

if has("autocmd")
    autocmd FileType ruby       setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html       setlocal ts=2 sts=2 sw=2 noexpandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType php        setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType css        setlocal ts=4 sts=4 sw=4 noexpandtab
endif

au BufNewFile,BufRead *.txt setfiletype text
au BufNewFile,BufRead *.as setfiletype actionscript
au BufNewFile,BufRead *.less setfiletype less
au BufNewFile,BufRead *.xt  setfiletype xt
au BufNewFile,BufRead *.module  setfiletype php
au BufNewFile,BufRead *.jst  setfiletype html
au BufNewFile,BufRead *.ctp  setfiletype php

" Enable soft-wrapping for text files
autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

"Disable auto-folding of loaded files
set nofoldenable

" Auto-show NerdTree. Note when opening a folder full of files we get two
" nerdttrees :-(
" autocmd VimEnter * NERDTree
" autocmd BufEnter * NERDTreeMirror

" Use Node.js for JavaScript interpretation
let $JS_CMD='node'
