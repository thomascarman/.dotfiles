" -----------------------------------------------------------------------------
" Plugin source
" -----------------------------------------------------------------------------
"'itchyny/calendar.vim'

" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
" let g:calendar_no_mappings=0
" let g:calendar_datetime='title'
" let g:calendar_number_of_months=5
" let g:calendar_filetype='markdown'
" let g:calendar_diary='~/.vault/docs/diary'
" let g:calendar_diary_list = [
"     \   {'name': 'Diary', 'path': $HOME.'/.vault/docs/diary', 'ext': '.md'},
"     \   {'name': 'Notes', 'path': $HOME.'/.vault/docs/notes', 'ext': '.md'},
"     \ ]

source ~/.vault/.cache/calendar.vim/credentials.vim

let g:calendar_first_day='sunday'
let g:calendar_cache_directory='~/.vault/.cache/calendar.vim/'
let g:calendar_task_delete = 1

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" function! s:prefix_zero(num) abort
"   if a:num < 10
"     return '0'.a:num
"   endif
"   return a:num
" endfunction
" 
" " Callback function for Calendar.vim
" function! DiaryDay(day, month, year, week, dir, wnum) abort
"   let day = s:prefix_zero(a:day)
"   let month = s:prefix_zero(a:month)
" 
"   let link = a:year.'-'.month.'-'.day
"   if winnr('#') == 0
"     if a:dir ==? 'V'
"       vsplit
"     else
"       split
"     endif
"   else
"     wincmd p
"     if !&hidden && &modified
"       new
"     endif
"   endif
" 
"   call vimwiki#diary#make_note(a:wnum, 0, link)
" endfunction
" 
" autocmd FileType calendar nmap <buffer> <CR> :call DiaryDay(b:calendar.day().get_day(), b:calendar.day().get_month(), b:calendar.day().get_year(), b:calendar.day().week(), "V", v:count1)<CR>

" -----------------------------------------------------------------------------
" Plugin Keymappings
" -----------------------------------------------------------------------------
nmap <LocalLeader>cal :Calendar -view=week -split=vertical -position=right<CR>
nmap <LocalLeader>Cal :Calendar<CR>
nmap <LocalLeader>u <Plug>(calendar_undo)
nmap <LocalLeader>c <Plug>(calendar_clear)
nmap <LocalLeader>d <Plug>(calendar_delete)

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
let g:unite_source_menu_menus.PluginKeyMaps.command_candidates += [
   \['➤ Open Calendar Left                                              <LocalLeader>cal', ''],
   \['➤ Open Calendar Bottom                                            <LocalLeader>caL', ''],
   \['➤ Open Calendar in new tab                                        <LocalLeader>Cal', ''],
   \]
