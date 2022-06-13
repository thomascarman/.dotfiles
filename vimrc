" ----------------------------------------------------------------------------------------
"                  ___           ___           ___       ___       ___
"                 /\__\         /\  \         /\__\     /\__\     /\  \
"                /:/  /        /::\  \       /:/  /    /:/  /    /::\  \
"               /:/__/        /:/\:\  \     /:/  /    /:/  /    /:/\:\  \
"              /::\  \ ___   /::\~\:\  \   /:/  /    /:/  /    /:/  \:\  \
"             /:/\:\  /\__\ /:/\:\ \:\__\ /:/__/    /:/__/    /:/__/ \:\__\
"             \/__\:\/:/  / \:\~\:\ \/__/ \:\  \    \:\  \    \:\  \ /:/  /
"                  \::/  /   \:\ \:\__\    \:\  \    \:\  \    \:\  /:/  /
"                  /:/  /     \:\ \/__/     \:\  \    \:\  \    \:\/:/  /
"                 /:/  /       \:\__\        \:\__\    \:\__\    \::/  /
"                 \/__/         \/__/         \/__/     \/__/     \/__/
"
" ----------------------------------------------------------------------------------------
" AUTHOR: Thomas Carman
"
" Inspired by: mattjmorrison/dotfiles (check them out on Github)
"   I have taking and modified to fit my needs from mattjmorrison's vimrc for their
"   dotfiles
" 
" Sections:
"   > Custom Init
"   > Initalize Plugins
"   > Leader Keys
"   > Config Functions
"   > Load Plugins
"   > Enable File type Configs
"   > Source Configs
"
" ----------------------------------------------------------------------------------------

" ----------------------------------------------------------------------------------------
" > Custom Init
"     Source custom-init to allow excluding plugins
" ----------------------------------------------------------------------------------------
let b:customInit=expand('~/.dotfiles/custom-configs/**/custom-init.vim')
if filereadable(b:customInit)
    exe 'source' b:customInit
endif

if !exists("g:exclude")
    let g:exclude = [""]
endif

" ----------------------------------------------------------------------------------------
" > Initalize Plugins
"     Buffer variables that control plugin loading and files for configs
" ----------------------------------------------------------------------------------------
let b:pluginList = split(globpath('~/.dotfiles/vim/unite-config', '*.vim'), '\n')
let b:pluginList += split(globpath('~/.dotfiles/vim/plugin-configs', '*.vim'), '\n')
let b:fileList = split(globpath('~/.dotfiles/vim/unite-config', '*.vim'), '\n')
let b:fileList += split(globpath('~/.dotfiles/vim/vanilla-configs', '*.vim'), '\n')
let b:fileList += split(globpath('~/.dotfiles/vim/plugin-configs', '*.vim'), '\n')

" ----------------------------------------------------------------------------------------
" > Leader Keys
" ----------------------------------------------------------------------------------------
let mapleader=" "
let maplocalleader="|"

" ----------------------------------------------------------------------------------------
" > Config Functions
"     Function to process lists for sourcing and adding bundles {1
" ----------------------------------------------------------------------------------------
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

" ----------------------------------------------------------------------------------------
" > Load Plugins
" ----------------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
call ProcessList(b:pluginList, 'AddBundle')
call plug#end()

" ----------------------------------------------------------------------------------------
" > Enable File type Configs
" ----------------------------------------------------------------------------------------
filetype plugin indent on

" ----------------------------------------------------------------------------------------
" > Source Configs
" ----------------------------------------------------------------------------------------
call ProcessList(b:fileList, "SourceFile")
