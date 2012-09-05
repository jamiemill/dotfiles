" NOTE: a lot of this is pinched from Janus.


" Load plugins pathogen-style.
" TODO: use erb for this and set this path dynamically to point at this repo?
call pathogen#infect('~/Work/dotfiles/vim-plugins')

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" disable macvim toolbar
if has("gui_running")
	set guioptions=egmrt
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set noswapfile
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching


" auto-complete filenames in a nice way in the status bar
set wildmenu
set wildmode=full

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

" Toggle TagBar
map <leader>t :TagbarToggle<cr>

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Colour schemes I like:
"colorscheme molokai
"colorscheme wombat256mod
"colorscheme Tomorrow-Night

" solarized
" the only way to use it in terminal 'properly' is to also load
" the solarized terminal theme.
" without doing this, you must set
" let g:solarized_termcolors=256 to go into 'degraded' mode.
" let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"for iterm2 in 256 colour mode
set t_Co=256

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

set noerrorbells
set visualbell

set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"Enable this to show tab and EOL chars visually
"set list listchars=tab:▸\ ,eol:¬,trail:·

if has("autocmd")
    autocmd FileType ruby       setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType markdown   setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType html       setlocal ts=2 sts=2 sw=2 noexpandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType php        setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType css        setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType coffee     setlocal ts=2 sts=2 sw=2 expandtab
endif

au BufNewFile,BufRead *.txt setfiletype text
au BufNewFile,BufRead *.as setfiletype actionscript
au BufNewFile,BufRead *.less setfiletype less
au BufNewFile,BufRead *.xt  setfiletype xt
au BufNewFile,BufRead *.module  setfiletype php
au BufNewFile,BufRead *.jst  setfiletype php
au BufNewFile,BufRead *.ctp  setfiletype php
au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger

" Enable soft-wrapping for text files
autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

"Disable auto-folding of loaded files
set nofoldenable

set autoindent
set smartindent
set smarttab
set nowrap

" Use Node.js for JavaScript interpretation
let $JS_CMD='node'

" show hidden chars
"set list
set listchars=trail:⋅,nbsp:⋅,tab:▸\ ,eol:¬

" highlight extra whitespace
" see http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" taken from: http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim/1618401#1618401
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" auto-strip trailing white space for ruby files
" autocmd BufWritePre *.rb :call <SID>StripTrailingWhitespaces()

" command to strip white space from any file
nnoremap <leader>s :call <SID>StripTrailingWhitespaces()<cr>

" When I close a tab, remove the buffer
set nohidden

" toggle tab-mirrored NERDTree with \n
nnoremap <Leader>n :NERDTreeTabsToggle<CR>

" preview markdown
nnoremap <leader>md :w ! multimarkdown \| mdtools format --add-toc > /tmp/mdpreview.html && open /tmp/mdpreview.html<cr><cr>

" find the current file in the nerdtree
map <leader>f :NERDTreeFind<cr>

" Disable arrow keys for learing purposes
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Customise ctrl-p ignored files
set wildignore+=*/.git/*,*.so,*.swp,*.zip
" ignore play framework build dir
set wildignore+=*/target/*

source ~/.vimstatus
