syntax on
set path+=**

set visualbell
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber
set nowrap
set smartcase
set noswapfile
set incsearch
set scrolloff=6

set termguicolors
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" autocomplete vim commands
set wildmenu
set wildmode=longest,list,full

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
 Plug 'junegunn/fzf.vim'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'jremmen/vim-ripgrep'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'ThePrimeagen/harpoon'
 Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
 Plug 'mbbill/undotree'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-dispatch'
 Plug 'tpope/vim-commentary'
 Plug 'tpope/vim-surround'
 Plug 'gruvbox-community/gruvbox'
 Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme gruvbox

if executable('rg')
	let g:rg_derive_root='true'
endif

let mapleader=" "

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" swap colon and semicolon
map ; :
noremap ;; ;
 
" navigate vim splits
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ft :Lex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>, :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>n :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>e :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>i :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>o :lua require("harpoon.ui").nav_file(4)<CR>
