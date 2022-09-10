set ignorecase
set smartcase
set incsearch

set wildmenu
set wildmode=longest,list,full

call plug#begin('~/.vim/plugged')
Plug 'asvetliakov/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()

let mapleader=" "

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" swap colon and semicolon
map ; :
noremap ;; ;

nnoremap <leader>u :UndotreeShow<CR>

nnoremap <leader>ft <Cmd>call VSCodeNotify('workbench.view.explorer')<CR>

