syntax on
filetype on
colorscheme delek
set nocompatible
set ruler
set noexrc
set hidden
set noerrorbells
set wildmenu
set shell=/bin/sh
" Search
set incsearch
set hlsearch
" Indention
"set smartindent
set autoindent
set tabstop=8
set softtabstop=8
set shiftwidth=8
" Scroll
set scrolloff=3

map Y y$
nnoremap <C-L> :nohl<CR><C-L>
" Fold
nmap <silent><space> ?{<CR>zf%<ESC>:nohlsearch<CR>
" Buffer
nmap <silent><right> :bnext<CR>
nmap <silent><left> :bprevious<CR>
" Make
nmap <silent><F5> :make<CR>
nmap <silent><F6> :make upload file="%"<CR>
nmap <silent><F7> :cope<CR>
nmap <silent><F8> :cclose<CR>
" NerdTree
nmap <silent><F9> :NERDTreeToggle<CR>
" vimrc
nmap <F11> :e ~/.vimrc<CR>
nmap <F12> :source ~/.vimrc<CR>

"if !exists("autocommands_loaded")
"  let autocommands_loaded = 1
"
"  au BufNewFile,BufRead *.php :nmap <silent><F6> :make %<CR>
"endif

"--------------------
" F U N C T I O N S
"--------------------
if exists("ToggleHLSearch")
	function ToggleHLSearch()
	       if &hls
		    set nohls
	       else
		    set hls
	       endif
	endfunction
endif
