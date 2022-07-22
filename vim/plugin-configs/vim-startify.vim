" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
" 'mhinz/vim-startify'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
let g:startify_session_dir='~/.vim/session'
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   📂 Files']            }, 
  \ { 'type': 'dir',       'header': ['   📂 Current Directory '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   ☕ Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   📚 Bookmarks']      },
  \ ]
let g:startify_bookmarks = [
  \ { 'c': '~/.dotfiles' },
  \ { 'z': '~/.zshrc' },
  \ { 'n': '~/.vault/docs' },
  \ ]
let g:startify_change_to_vcs_root=1 " Sets to working git (project dir)
let g:startify_session_delete_buffers=1 " Let startify take care of buffers
let g:startify_fortune_use_unicode=1
let g:startify_session_persistence=1 " Update sessions
let g:startify_enable_special=0 "git rid of empty buffer on quit

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
nmap <C-w>w :Startify<CR>

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
let g:unite_source_menu_menus.PluginKeyMaps.command_candidates += [
    \['➤ Open Startify                                                  <C-w>w', 'echo "Opening Startify"'],
    \]
