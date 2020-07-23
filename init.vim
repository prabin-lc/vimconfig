let mapleader=','

nnoremap <silent> <leader>p "*P
noremap <silent> <leader>y "*y

xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

call plug#begin('~/vscode-neovim/plugged')

Plug 'tpope/vim-surround'

call plug#end()