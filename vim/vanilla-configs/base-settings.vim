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
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow splitright
set textwidth=90
set colorcolumn=90
set t_Co=256
set whichwrap=<,>,h,l
set smartcase
set ignorecase
set mouse=n
set noshowmode

filetype plugin indent on

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_brose_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ctrlp_use_cashing=0

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
