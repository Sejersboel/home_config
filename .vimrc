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
set spell spelllang=en_gb
set spellsuggest=fast,20 "Don't show too much suggestion for spell check.
set spellfile=~/Dropbox/Tool/Vim_Spell_add/en.utf-8.add"

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
