call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'maksimr/vim-jsbeautify'
Plug 'tpope/vim-fugitive'
call plug#end()

set rnu
set nu
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
tab all

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set background=light
"colorscheme PaperColor

