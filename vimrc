" NOTE: a lot of this is pinched from Janus.

" Load plugins pathogen-style.
call pathogen#infect('~/dotfiles/vim-plugins/{}')

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

" Toggle Paste/Nopaste
map <leader>p :set paste!<cr>

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

"for iterm2 in 256 colour mode
set t_Co=256

colorscheme jamietheme

"some stuff to get the mouse going in term
set mouse=a
if !has('nvim')
  set ttymouse=xterm2
endif

set noerrorbells
set visualbell

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

if has("autocmd")
    autocmd FileType ruby       setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType markdown   setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab foldmethod=indent
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab foldmethod=syntax
    autocmd FileType php        setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType css        setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType less       setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType coffee     setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType scala      setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType jade       setlocal ts=2 sts=2 sw=2 expandtab
	autocmd BufNewFile,BufRead *.txt setfiletype text
	autocmd BufNewFile,BufRead *.as setfiletype actionscript
	autocmd BufNewFile,BufRead *.less setfiletype less
	autocmd BufNewFile,BufRead *.jst  setfiletype php
	autocmd BufNewFile,BufRead *.ctp  setfiletype php
	autocmd BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger
	" Enable soft-wrapping for text files
	autocmd FileType text,markdown setlocal wrap linebreak nolist textwidth=80
endif

"Disable auto-folding of loaded files
set nofoldenable

set autoindent
set smarttab
set nowrap

" Use Node.js for JavaScript interpretation
let $JS_CMD='node'

" uncomment to show hidden chars
"set list
" configure hidden chars
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

" command to strip white space from any file
nnoremap <leader>s :call <SID>StripTrailingWhitespaces()<cr>

" Don't allow unwritten files to hang around in hidden 
set nohidden

" toggle tab-mirrored NERDTree with \n
nnoremap <Leader>n :NERDTreeTabsToggle<CR>

" preview markdown
nnoremap <leader>md :w ! multimarkdown \| mdtools format --add-toc > /tmp/mdpreview.html && open /tmp/mdpreview.html<cr><cr>

" re-select last pasted section
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" JSON pretty-print the visual selection
vnoremap <leader>j :! python -m json.tool<cr>

" cycle through buffers with VIM up/down keys whilst ctrl is pressed
" note you can also use <C-^> to alternate with previous
nnoremap <C-k> :bprev<cr>
nnoremap <C-j> :bnext<cr>
inoremap <C-k> <esc>:bprev<cr>
inoremap <C-j> <esc>:bnext<cr>

" find the current file in the nerdtree
map <leader>f :NERDTreeFind<cr>

" Customise ctrl-p ignored files
set wildignore+=*/.git/*,*.so,*.swp,*.zip
" ignore play framework build dir
set wildignore+=*/target/*

" Specify which javascript syntax checker(s) to use with syntastic and in what
" order.
" Supports a list like: ['jshint', 'jsl', 'gjslint', 'jslint', 'closurecompiler']
let g:syntastic_javascript_checkers=['jshint']

" Disable automatic checking of HTML files. `tidy` is too old and the
" integration seems broken now, at least with the version on my mac.
let g:syntastic_html_checkers=[]

" Autoread only works in GUI Vim. This makes it work in
" a terminal too.
" See: http://stackoverflow.com/a/10962191
set autoread
augroup checktime
    au!
    if !has("gui_running")
        "silent! necessary otherwise throws errors when using command
        "line window.
        autocmd BufEnter        * silent! checktime
        autocmd CursorHold      * silent! checktime
        autocmd CursorHoldI     * silent! checktime
        "these two _may_ slow things down. Remove if they do.
        autocmd CursorMoved     * silent! checktime
        autocmd CursorMovedI    * silent! checktime
    endif
augroup END


let g:UltiSnipsListSnippets = '<c-a>'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Clear search highlights in normal mode by hitting return
nnoremap <cr> :noh<cr>

" Auto-insert an indent after a new line between autoclosed braces.
let g:delimitMate_expand_cr=1

" customise expand-region to include expanding around brackets, parentheses
" and braces
call expand_region#custom_text_objects({
    \ 'a]' :1,
    \ 'ab' :1,
    \ 'aB' :1,
    \ })

" yank/paste use the system clipboard
set clipboard=unnamed

autocmd! User GoyoEnter Limelight 0.8
autocmd! User GoyoLeave Limelight!

