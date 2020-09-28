call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()


autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType vue noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType rust noremap <buffer> <c-f> :RustFmt<cr>

set nu
set rnu
set hlsearch
set incsearch
set mouse=a


set tabstop=4 expandtab shiftwidth=4 smarttab
set backupcopy=yes

set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor
