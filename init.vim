let &packpath = &runtimepath

set nu rnu

set scrolloff=10

set mouse=nvi

set tw=79 fo+=t

set splitbelow splitright

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

set updatetime=300

let mapleader = ","

set signcolumn=yes

nnoremap <silent> <leader>v "*P
noremap <silent> <leader>y "*y

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
nnoremap <silent> <C-B> :Vex<CR>

let g:python3_host_prog = stdpath('data').'/py3nvim/Scripts/python.exe'

call plug#begin(stdpath('data') . '/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
Plug 'gruvbox-community/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

exec "source " stdpath('config').'/pluginrc/gruvbox.vim'
exec "source " stdpath('config').'/pluginrc/coc.vim'
exec "source " stdpath('config').'/pluginrc/ctrlp.vim'
