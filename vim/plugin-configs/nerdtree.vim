" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'preservim/nerdtree'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable=' ▸'
let g:NERDTreeDirArrowCollapsible=' ▾'

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
nnoremap <silent> <leader>to :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <silent> <leader>tt :NERDTreeToggle<CR>
nnoremap <silent> <leader>tf :NERDTreeFind<CR>

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
" N/A
