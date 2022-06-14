" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'airblade/vim-gitgutter'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
" N/A

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
" N/A

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
let g:unite_source_menu_menus.PluginKeyMaps.command_candidates += [
    \['➤ Quick exit Insert Mode                                         jj', 'echo "Use jj to exit insert mode"'],
    \['➤ Stage Complete Hunk                                            <Leader>hs', 'echo "Use <Leader>hs to stage current hunk"'],
    \['➤ Stage Partial Hunks (Visual)                                   {Visual}<Leader>hs', 'echo "Use <Leader>hs in visual mode to stage selected lines."'],
    \]
