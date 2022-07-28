" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'morhetz/gruvbox'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
let g:gruvbox_contrast_light='soft'
let g:gruvbox_contrast_dark='medium'
set background=dark
colorscheme gruvbox

set termguicolors

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
let s:mybg = "dark"
function! BgToggle()
    if (s:mybg ==? "light")
        set background=dark
        let s:mybg = "dark"
    else
        set background=light
        let s:mybg = "light"
    endif
    colorscheme gruvbox
endfunction

nnoremap <leader><leader>b :call BgToggle()<CR>

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
" N/A
