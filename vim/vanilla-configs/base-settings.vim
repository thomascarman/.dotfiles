" -----------------------------------------------------------------------------
" Settings
" -----------------------------------------------------------------------------

syntax on

set encoding=UTF-8
set nocompatible
set noerrorbells
set visualbell
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow splitright
set colorcolumn=80
set t_Co=256
set whichwrap=<,>,h,l

" -----------------------------------------------------------------------------
" Auto Commands
" -----------------------------------------------------------------------------

autocmd InsertEnter,InsertLeave * set cul!
autocmd BufNewFile,BufRead .prettierrc set ft=json
autocmd BufNewFile,BufRead .svelte set ft=html

highlight ColorColumn ctermbg=0 guibg=lightgrey

" -----------------------------------------------------------------------------
" Other Commands
" -----------------------------------------------------------------------------

command -nargs=1 Sch noautocmd vimgrep /<args>/gj `git ls-files` | cw
