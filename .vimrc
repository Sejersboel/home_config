set nocompatible
execute pathogen#infect()
syntax on
filetype indent plugin on
let g:tex_flavor='latex'
"" line numbers
set number

"" File stats
set ruler

"" Encoding
set encoding=utf-8

"" whitespace
set wrap
set textwidth=79
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

"" Cursor
set backspace=indent,eol,start
nnoremap j gj
nnoremap k gk

"" auto completion
inoremap {<CR> {<CR><CR>}<ESC>ci{
inoremap "" ""<++><ESC>4hci"

"" Tabs
nnoremap tn :tabnew<SPACE>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

"" Save/quit
