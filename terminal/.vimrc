set noerrorbells
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set number
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged/autoload')
Plug 'morhetz/gruvbox'
call plug#end()


colorscheme gruvbox
set background=dark
