" Basic settings
syntax on
set number
" set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
" set cursorline
set mouse=a

" Use system clipboard
set clipboard=unnamedplus

" Enable line wrapping for readability
" set wrap
" set linebreak

" NERDTree configuration
" Open NERDTree with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Automatically open NERDTree when Vim starts with a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | execute 'NERDTree' argv()[0] | wincmd p | endif

" C++ filetype settings
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType cpp setlocal makeprg=g++\ -std=c++14\ -Wall\ %\ -o\ %<

" Plugin system: vim-plug (install this separately)
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'preservim/nerdtree'

call plug#end()
