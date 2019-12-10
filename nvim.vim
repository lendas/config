call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor

set nu
set rnu
set hlsearch
set incsearch

set tabstop=4 expandtab shiftwidth=4 smarttab

tab all
