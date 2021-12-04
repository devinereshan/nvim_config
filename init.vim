" Run :options in vim to see available configuration options
" These can also be found at /usr/share/vim/vim81/doc/options.txt

"-----------------------------
" GENERAL SETTINGS
"-----------------------------

set nocompatible

" Allow intelligent auto-indenting for each filetype, and for plugins that are filetype specific
filetype indent plugin on

syntax on
" enable mouse integration in all modes
set mouse=a
set encoding=utf-8
set hidden
set number relativenumber
" Preserve indentation in wrapped text
set breakindent
" Highlight searches
set hlsearch
" Automatically delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" FINDING FILES:
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Use four spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup
set shiftwidth=4
set softtabstop=4
set expandtab

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

set list
set listchars=tab:▸\ ,trail:·

" Highlight column 80 in grey
set colorcolumn=80
highlight ColorColumn ctermbg=8

" automatically refresh opened files if they've been modified elsewhere
set autoread
autocmd FocusGained,InsertEnter * :silent! edit | :do Syntax

" For copy/paste to clipboard
set clipboard+=unnamedplus

" Don't automatically continue comments on the next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"-----------------------------
" KEY REMAPS
"-----------------------------

let mapleader = "\<space>"

" Window focus switch with control + h,j,k,l
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

" edit file under cursor in new tab (even if file doesn't exist)
nmap <C-e> <Esc>:tabedit <cfile><cr>
" enter command mode to search the current directory tree (and open in new tab)
nnoremap <C-f> <Esc>:tabedit ./

" move between tabs
nmap <C-i> <Esc>gT
nmap <C-o> <Esc>gt

nmap <leader>k :nohlsearch<cr>

" single line c comments
map <C-s> <Esc>V:norm 0i// <Enter><Esc>
" remove single line c comment
map <C-_> <Esc>V:norm ^xxx<Enter>

" autoformat with clang-format
map <C-y> <Esc>:w<Enter>:! clang-format -style=file -i %<Enter>:e<Enter>
imap <C-y> <Esc>:w<Enter>:! clang-format -style=file -i %<Enter>:e<Enter>

" copy clang-format config to current directory so it will actually work.
map <C-t> <Esc>:! clanginit<Enter>



