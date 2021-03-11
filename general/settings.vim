set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set hidden
set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300

set shortmess+=c

nnoremap c "_c
set nocompatible
filetype plugin on
syntax on

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

set number relativenumber

set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2

set scrolloff=3

set autoindent
" Enable autocompletion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

colorscheme wal
hi Pmenu ctermfg=0 ctermbg=5 guibg=LightMagenta
hi CursorLine cterm=NONE
