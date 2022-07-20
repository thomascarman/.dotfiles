" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'vim-airline/vim-airline'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#fnamemod = ':t'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep=''
let g:airline_left_alt_sep=''
let g:airline_right_sep=''
let g:airline_right_alt_sep=''
let g:airline_symbols.space=' '
let g:airline_symbols.branch=''
let g:airline_symbols.readonly=''
let g:airline_symbols.linenr='☰ '
let g:airline_symbols.colnr = ''
let g:airline_symbols.maxlinenr=' '
let g:airline_symbols.dirty='⚡'

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
" N/A

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
" N/A
