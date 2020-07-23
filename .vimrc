set termguicolors
if &compatible
  set nocompatible
endif
set backspace=indent,eol,start
set history=200
set ruler
set showcmd
set wildmenu

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key

set display=truncate

set scrolloff=10

if has('gui_win32')
  set guioptions-=m
  set guioptions-=r
  set guioptions-=T
  set guifont=Cascadia_Code:h10
endif

if has('mouse')
  if &term =~ 'xterm'
    set mouse=a
  else
    set mouse=nvi
  endif
endif

syntax on
filetype plugin indent on

set nu relativenumber

set vb t_vb=

set splitbelow splitright

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

set foldmethod=indent
set foldlevel=99

set updatetime=100

" autocmd FileType text setlocal textwidth=79
set tw=79 fo+=t

let mapleader = ","

nnoremap <silent> <leader>v "*P
noremap <silent> <leader>y "*y

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
nnoremap <silent> <C-B> :Vex<CR>

if has('reltime')
  set incsearch
endif

if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

if has('syntax') && has('eval')
  packadd! matchit
endif

call plug#begin('~/vimfiles/plugged')

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


let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

set hidden
set nobackup
set nowritebackup
set cmdheight=2

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

colorscheme gruvbox

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_switch_buffer = 'et'

set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
