" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'easymotion/vim-easymotion'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
let g:EasyMotion_smartcase = 1 " turn on case insensitive feature
let g:EasyMotion_do_mapping = 0 " disable default mappings
let g:EasyMotion_use_smartsign_us = 1 " 1 will match 1 and !
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_space_jump_first = 1
let g:EasyMotion_enter_jump_first = 1

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
nmap <leader>g <Plug>(easymotion-bd-w)
nmap s <Plug>(easymotion-s2)
map t <Plug>(easymotion-bd-t)
map f <Plug>(easymotion-bd-f)
omap t <Plug>(easymotion-tl)
omap f <Plug>(easymotion-fl)
nmap <leader><leader>j <Plug>(easymotion-j)
nmap <leader><leader>k <Plug>(easymotion-k)

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
let g:unite_source_menu_menus.PluginKeyMaps.command_candidates += [
    \['➤ Search words by Character                                      <Leader>g', 'echo "Search words by Character"'],
    \['➤ Search for two Characters                                      s', 'echo "Search for Two Charaters"'],
    \['➤ Goto given Character                                           f', 'echo "Goto given Character"'],
    \['➤ Goto before given Character                                    t', 'echo "Goto before given Character"'],
    \['➤ Goto line via key (before)                                     <Leader><Leader>k', 'echo "Goto line via key (before)"'],
    \['➤ Goto line via key (after)                                      <Leader><Leader>j', 'echo "Goto line via key (after)"'],
    \]
