set nocompatible
filetype plugin indent on

set encoding=UTF-8
set backspace=indent,eol,start
set complete-=i
set mouse=a

" Insert spaces for tabs
set tabstop=2 shiftwidth=2 expandtab
set smarttab
set autoindent
set cindent
set nrformats-=octal
set incsearch
set ruler
set wildmenu
set autoread
set nowrap

" Hybrid line numbers
set number relativenumber
set nu rnu "Line number

colorscheme industry


"" Bindings
let mapleader = " "

inoremap jk <Esc>
nnoremap <leader>W <C-W>
nnoremap <leader>/ %

nnoremap N ^
vnoremap N ^
nnoremap M $
vnoremap M $
nnoremap <C-/> gcc
vnoremap <C-/> gc

nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>

nnoremap <leader><Tab> :bnext<cr>
nnoremap <leader>x :bd<cr>

" Plugins
"  NERDTree
map <C-b> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

"  vim-airline
let g:airline_theme = 'violet'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

"  vim-better-whitespace
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:strip_lines_at_eof = 0

