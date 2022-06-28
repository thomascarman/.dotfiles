" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'junegunn/vim-emoji'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
set completefunc=emoji#complete
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
nnoremap <leader>er :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
let g:unite_source_menu_menus.PluginKeyMaps.command_candidates += [
   \['➤ Replace Emoji text with icons                                   <Leader>er', ''],
   \['➤ Open complete string menu for emoji                             :coff<C-X><C-U>', ''],
   \]
