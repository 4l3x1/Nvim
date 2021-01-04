" Sets
set number
set relativenumber
set shiftwidth=4 tabstop=4 expandtab
set clipboard=unnamed
set mouse=a
set nocompatible
set encoding=utf-8
syntax on

call plug#begin()

" Temas
" Plug 'dracula/vim', { 'as': 'dracula' }
source $home\AppData\Local\nvim\Themes\them.vim
" IDE
Plug 'sheerun/vim-polyglot' " resaltador de sintaxis
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-commentary'

call plug#end()

" Vim Airline - Enable tabline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

set noshowmode " No mostrar el modo actual (ya lo muestra la barra de estado))))

" Siwtch to your current theme
let g:airline_theme='soda'
set guifont=Source\ Code\ Pro\ for\ Powerline 
let g:Powerline_symbols = 'fancy' 

" Dracula
colorscheme dracula

" Asignamos tecla lider al ' ', cuando queramos hacer una convinacion de
" letras primero se utilizara el ' '
let mapleader=" "

" Easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" NERDTree
let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR> 
"--> Se va a abrir la consola, cuando presionemos ' nt' y se va a ejecutar el
" comando :NERDTreeFind de ahi se va a presionar la tecla enter <CR>

" Crear atajos personalizados
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>d "+p i<CR>
nmap <Leader>cp :w <bar> :term g++ % -o %:r && %:r<CR><CR>
nmap <Leader>c :w <bar> :term gcc % -o %:r && %:r<CR><CR>

" Terminal
map <F2> :terminal<CR>

" compile 
autocmd filetype c nnoremap <F4> :w <bar> :terminal gcc % -o %:r && %:r<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> :terminal g++ % -o ejec && ejec<CR>
autocmd filetype python nnoremap <F6> :w <bar> :terminal python % -u %:r<CR>
"autocmd filetype cpp nnoremap <F5> :w <bar> :terminal g++ % -o %:r && %:r<CR>
autocmd filetype java nnoremap <F7> :w <bar> :terminal javac % && java %<CR>
"autocmd filetype cpp nnoremap <F5> :w !start cmd<bar>echo hola<CR>
"autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && '.shellescape('%:r')<CR>
"autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r && %:r.exe <CR>
"autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && '.shellescape('%:r')<CR>

" Autocompletar parentesis, llaves, corchetes, etc.
"inoremap ( ()<Esc>i

" Explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
