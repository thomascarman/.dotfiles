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

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin' |
    \ Plug 'ryanoasis/vim-devicons'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'morhetz/gruvbox'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-rhubarb'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'kshenoy/vim-signature'

if has('nvim')
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
endif

call plug#end()

" -----------------------------------------------------------------------------
" Plugins Settings
" -----------------------------------------------------------------------------

colorscheme gruvbox
set background=dark
let g:airline_theme='kolor'

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_brose_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ctrlp_use_cashing=0

let NERDTreeQuitOnOpen=0
let g:NERDTreeDirArrowExpandable=' ▸'
let g:NERDTreeDirArrowCollapsible=' ▾'

let g:prettier#autoformat = 1
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#quickfix_enabled = 0

let g:EasyMotion_smartcase = 1 " turn on case insensitive feature
let g:EasyMotion_do_mapping = 0 " disable default mappings
let g:EasyMotion_use_smartsign_us = 1 " 1 will match 1 and !
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_space_jump_first = 1
let g:EasyMotion_enter_jump_first = 1

" -----------------------------------------------------------------------------
" Hotkeys
" -----------------------------------------------------------------------------

nmap <leader>g <Plug>(easymotion-bd-w)
nmap s <Plug>(easymotion-s2)
map t <Plug>(easymotion-bd-t)
map f <Plug>(easymotion-bd-f)
omap t <Plug>(easymotion-tl)
omap f <Plug>(easymotion-fl)
nmap <leader><leader>j <Plug>(easymotion-j)
nmap <leader><leader>k <Plug>(easymotion-k)

nnoremap <leader>vc :!code .<CR>
nnoremap <leader>vt :term<SPACE>
nnoremap <leader>vl :IndentLinesToggle<CR>
nnoremap <leader>vf :term npm run format<CR>

nnoremap <leader>gs :Git<CR>
nnoremap <leader>gl :Gclog<CR>
nnoremap <leader>ga :Git add .<CR>
nnoremap <leader>gp :Git add --patch .<CR>
nnoremap <leader>gd :Gvdiffsplit<CR>

nnoremap <leader>sx :split<CR>
nnoremap <leader>sy :vsplit<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>u :UndotreeShow<CR>

nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>p :Prettier<CR>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>. :resize +5<CR>
nnoremap <silent> <leader>, :resize -5<CR>

nnoremap <silent> <leader>cd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>cf :YcmCompleter FixIt<CR>

nnoremap <silent> <leader>to :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <silent> <leader>tt :NERDTreeToggle<CR>
nnoremap <silent> <leader>tf :NERDTreeFind<CR>

nnoremap <C-m> :tabn<CR>
nnoremap <C-b> :tabp<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-s> :wa<CR>

nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-k> <Esc>:m-2<CR>==gi
inoremap <C-j> <Esc>:m+<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

if has('nvim')
    " Find files using Telescope command-line sugar.
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>
endif
