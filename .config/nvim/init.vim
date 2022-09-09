set number
set relativenumber
set ignorecase
set smartcase
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'asvetliakov/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()

let mapleader=" "

" allow inserting an empty row
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" swap colon and semicolon
map ; :
noremap ;; ;

nnoremap <leader>u UndotreeShow<CR>
