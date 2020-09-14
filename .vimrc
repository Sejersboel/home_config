set nocompatible
execute pathogen#infect()
syntax on
filetype indent plugin on
let g:tex_flavor='latex'

"" line numbers
set number
set relativenumber

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

nnoremap <F11> :call ToggleExpandTab()<CR>
function! ToggleExpandTab()
  if &expandtab
    set shiftwidth=8
    set softtabstop=0
    set tabstop=8
    set noexpandtab
    echo "Tabs are not expanded"
  else 
    set shiftwidth=2
    set softtabstop=2
    set tabstop=2
    set expandtab
    echo "Tabs are expanded"
  endif
endfunction

"" Cursor
set backspace=indent,eol,start
nnoremap j gj
nnoremap k gk

"" auto completion
inoremap {<CR> {<CR><CR>}<ESC>ci{
inoremap "" ""<++><ESC>4hci"
inoremap ii <ESC>

"" Tabs
nnoremap tn :tabnew<SPACE>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

"" Folding
set foldmethod=indent
set foldnestmax=10
set foldlevel=1

"" spelling
set spell
set spellsuggest=fast,20 "Don't show too much suggestion for spell check.

nnoremap <F12> :call ToggleSpell()<CR>
function! ToggleSpell()
  if &spell== 'nospell'
    setlocal spell
    echo "Spelling is on"
  else
    setlocal nospell
    echo "Spelling is off"
  endif
endfunction

nnoremap <F9> :call ToggleDictionary()<CR>
function! ToggleDictionary()
  if &spelllang=='en_gb'
    set spelllang=da
    set spellfile=~/.vim/da.utf-8.add
    echo "Spellcheck Danish"
  else
    set spelllang=en_gb
    set spellfile=~/.vim/en.utf-8.add
    echo "Spellcheck English"
  endif
endfunction

"" Vim-Plug
call plug#begin('~/.vim/plugged')

" vim-repeat
Plug 'https://tpope.io/vim/repeat.git'


" vim-indent-object
Plug 'michaeljsmith/vim-indent-object'

call plug#end()
