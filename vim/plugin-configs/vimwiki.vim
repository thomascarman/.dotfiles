" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'vimwiki/vimwiki'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
let g:vimwiki_list = [{'path': '~/.vault/docs/',
                      \ 'syntax': 'markdown', 'ext': '.md',
                      \ 'auto_tags': 1, 'auto_generate_tags': 1,
                      \ 'auto_diary_index': 1}]
let g:vimwiki_hl_headers=1
let g:vimwiki_hl_cb_checked=2

" Add command Diary to open diary list
command! Diary VimwikiDiaryIndex
command! Tags e ~/.vault/docs/Tags.md
augroup vimwikigroup
    autocmd!
    " automaticlly update links on read diary
    autocmd BufRead,BufNewFile diary.md VimwikiDiaryGenerateLinks
    autocmd BufRead,BufNewFile Tags.md VimwikiGenerateTagLinks
augroup end

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
" N/A

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
let g:unite_source_menu_menus.PluginKeyMaps.command_candidates += [
   \['➤ Open default wiki index file                                    <Leader>ww', ''],
   \['➤ Open default wiki index file in a new tab                       <Leader>wt', ''],
   \['➤ Select and open wiki index file                                 <Leader>ws', ''],
   \['➤ Delete wiki file you are in                                     <Leader>wd', ''],
   \['➤ Rename wiki file you are in                                     <Leader>wr', ''],
   \['➤ Follow/Create wiki link                                         <Enter>', ''],
   \['➤ Split and follow/create wiki link                               <S-Enter>', ''],
   \['➤ Vertical split and follow/create wiki link                      <C-Enter>', ''],
   \['➤ Go back to parent(previous) wiki link                           <Backspace>', ''],
   \['➤ Find next wiki link                                             <Tab>', ''],
   \['➤ Find previous wiki link                                         <S-Tab>', ''],
   \]
