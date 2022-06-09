" Source custom-init to allow excluding plugins
let b:customInit=expand('~/.dotfiles/custom-configs/**/custom-init.vim')
if filereadable(b:customInit)
    exe 'source' b:customInit
endif

if !exists("g:exclude")
    let g:exclude = [""]
endif

" Buffer variables that control plugin loading
let b:pluginList = split(globpath('~/.dotfiles/vim/unite-config', '*.vim'), '\n')
let b:pluginList += split(globpath('~/.dotfiles/vim/plugin-configs', '*.vim'), '\n')
let b:fileList = split(globpath('~/.dotfiles/vim/unite-config', '*.vim'), '\n')
let b:fileList += split(globpath('~/.dotfiles/vim/vanilla-configs', '*.vim'), '\n')
let b:fileList += split(globpath('~/.dotfiles/vim/plugin-configs', '*.vim'), '\n')

" Set leader keys
let mapleader=" "
let maplocalleader="|"

" Function to process lists for sourceing and adding bundles {1
function! ProcessList(listToProcess, functionToCall)
    for fpath in a:listToProcess
        if index(g:exclude, split(fpath, "/")[-1]) >= 0
            continue
        else
            call {a:functionToCall}(fpath)
        endif
    endfor
endfunction

function! AddBundle(fpath)
    execute "Plug " . readfile(a:fpath, "", 4)[-1][1:]
endfunction

function! SourceFile(fpath)
    exe 'source' a:fpath
endfunction

" Manage plug-ins
if &compatible
    set nocompatible
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Load in vim plugins
call plug#begin('~/.vim/plugged')
call ProcessList(b:pluginList, 'AddBundle')
call plug#end()

" Enable filetype custom config
filetype plugin indent on

" Source Vim configurations
call ProcessList(b:fileList, "SourceFile")

" " -----------------------------------------------------------------------------
" " Plugins
" " -----------------------------------------------------------------------------
" 
" call plug#begin('~/.vim/plugged')
" 
" Plug 'mattn/emmet-vim'
" Plug 'preservim/nerdtree' |
"     \ Plug 'Xuyuanp/nerdtree-git-plugin' |
"     \ Plug 'ryanoasis/vim-devicons'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Plug 'morhetz/gruvbox'
" " Plug 'vim-airline/vim-airline'
" " Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-rhubarb'
" Plug 'jremmen/vim-ripgrep'
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
" Plug 'leafgarland/typescript-vim'
" Plug 'vim-utils/vim-man'
" Plug 'lyuts/vim-rtags'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'mbbill/undotree'
" Plug 'evanleck/vim-svelte', {'branch': 'main'}
" Plug 'sheerun/vim-polyglot'
" Plug 'Yggdroot/indentLine'
" Plug 'easymotion/vim-easymotion'
" Plug 'kshenoy/vim-signature'
" 
" if has('nvim')
"     Plug 'nvim-lua/popup.nvim'
"     Plug 'nvim-lua/plenary.nvim'
"     Plug 'nvim-telescope/telescope.nvim'
" endif
" 
" call plug#end()
" 
" " -----------------------------------------------------------------------------
" " Plugins Settings
" " -----------------------------------------------------------------------------
" 
" colorscheme gruvbox
" set background=dark
" let g:airline_theme='kolor'
" 
" if executable('rg')
"     let g:rg_derive_root='true'
" endif
" 
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" let mapleader = " "
" let g:netrw_brose_split=2
" let g:netrw_banner=0
" let g:netrw_winsize=25
" let g:ctrlp_use_cashing=0
" 
" let NERDTreeQuitOnOpen=0
" let g:NERDTreeDirArrowExpandable=' ▸'
" let g:NERDTreeDirArrowCollapsible=' ▾'
" 
" let g:prettier#autoformat = 1
" let g:prettier#autoformat_config_present = 1
" let g:prettier#autoformat_require_pragma = 0
" let g:prettier#quickfix_enabled = 0
" 
" let g:EasyMotion_smartcase = 1 " turn on case insensitive feature
" let g:EasyMotion_do_mapping = 0 " disable default mappings
" let g:EasyMotion_use_smartsign_us = 1 " 1 will match 1 and !
" let g:EasyMotion_use_upper = 1
" let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
" let g:EasyMotion_space_jump_first = 1
" let g:EasyMotion_enter_jump_first = 1
" 
" " -----------------------------------------------------------------------------
" " Hotkeys
" " -----------------------------------------------------------------------------
" 


" nnoremap <silent> <leader>cd :YcmCompleter GoTo<CR>
" nnoremap <silent> <leader>cf :YcmCompleter FixIt<CR>
" 

" if has('nvim')
"     " Find files using Telescope command-line sugar.
"     nnoremap <leader>ff <cmd>Telescope find_files<cr>
"     nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"     nnoremap <leader>fb <cmd>Telescope buffers<cr>
"     nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" endif
