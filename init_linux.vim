set number
set relativenumber
set shiftwidth=4 tabstop=4 expandtab
set clipboard=unnamed
set mouse=a
set nocompatible
set encoding=utf-8
"syntax on

call plug#begin()

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme dracula

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:Powerline_symbols = 'fancy'


let mapleader=" "

"nmap <Leader>s <Plug>(easymotion-s2)

let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR> 
