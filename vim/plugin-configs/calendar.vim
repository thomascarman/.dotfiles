" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'itchyny/calendar.vim'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
let g:calendar_filetype='markdown'
let g:calendar_no_mappings=0
let g:calendar_navi='both'
let g:calendar_number_of_months=5

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
nmap <LocalLeader>cal :Calendar<CR>
nmap <LocalLeader>Cal :CalendarT<CR>
nmap <LocalLeader>caL :CalendarH<CR>

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
let g:unite_source_menu_menus.PluginKeyMaps.command_candidates += [
   \['➤ Open Calendar Left                                              <LocalLeader>cal', ''],
   \['➤ Open Calendar Bottom                                            <LocalLeader>caL', ''],
   \['➤ Open Calendar in new tab                                        <LocalLeader>Cal', ''],
   \]
