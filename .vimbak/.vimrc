" Syntax
syntax on

" Sets line number to on.
set number

" Sets tab as 2 spaced spaces.
set tabstop=2
set shiftwidth=2
set expandtab

" Word wrapping
set nowrap

" Adds a column to limit at width 80.
set colorcolumn=100

"Function to diff from last buffer save.
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" Write after :next and :make.
set autowrite

set ruler

" Plugin Manager and the sorts.
execute pathogen#infect()
syntax on
filetype plugin indent on

set rnu
colorscheme evening

let g:tex_flavor="tex"

" Man page
runtime ftplugin/man.vim
source $VIMRUNTIME/ftplugin/man.vim
