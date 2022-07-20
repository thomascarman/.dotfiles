" -----------------------------------------------------------------------------
" Notes
" -----------------------------------------------------------------------------
"  (nore) prefix -- non-recursive
"  (un)   prefix -- Remove a mode-specific map
"  Commands                        Mode
"  --------                        ----
"  map                             Normal, Visual, Select, Operator Pending modes
"  nmap, nnoremap, nunmap          Normal mode
"  imap, inoremap, iunmap          Insert and Replace mode
"  vmap, vnoremap, vunmap          Visual and Select mode
"  xmap, xnoremap, xunmap          Visual mode
"  smap, snoremap, sunmap          Select mode
"  cmap, cnoremap, cunmap          Command-line mode
"  omap, onoremap, ounmap          Operator pending mode
"
" Keys         Notation
" -----        ---------
" <C-s>        Ctrl + s
" <A-s>        Alt + s
" <M-s>        Meta + s
" <BS>         Backspace
" <Tab>        Tab
" <CR>         Enter
" <Esc>        Escape
" <Space>      Space
" <Up>         Up arrow
" <Down>       Down arrow
" <Left>       Left arrow
" <Right>      Right arrow
" <F1> - <F12> Function keys 1 to 12
" <Insert>     Insert
" <Del>        Delete
" <Home>       Home
" <End>        End

" -----------------------------------------------------------------------------
" Keymaps
" -----------------------------------------------------------------------------
imap jj <Esc>

nnoremap <leader>vc :!code .<CR>
nnoremap <leader>vt :term<SPACE>
nnoremap <leader>vf :term npm run format<CR>

nnoremap <leader>sx :split<CR>
nnoremap <leader>sy :vsplit<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>

nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>cp :cprev<CR>
nnoremap <leader>cn :cnext<CR>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>. :resize +5<CR>
nnoremap <silent> <leader>, :resize -5<CR>

nnoremap <leader>1 1gt<CR>
nnoremap <leader>2 2gt<CR>
nnoremap <leader>3 3gt<CR>
nnoremap <leader>4 4gt<CR>
nnoremap <leader>5 5gt<CR>
nnoremap <leader>6 6gt<CR>
nnoremap <leader>7 7gt<CR>
nnoremap <leader>8 8gt<CR>
nnoremap <leader>9 9gt<CR>
nnoremap <leader>0 0gt<CR>
nnoremap <leader>= :tabn<CR>
nnoremap <leader>+ :tabmove+<CR>
nnoremap <leader>- :tabp<CR>
nnoremap <leader>_ :tabmove-<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-S-n> :tabclose<CR>
nnoremap <C-s> :wa<CR>

nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
" inoremap <C-k> <Esc>:m-2<CR>==gi
" inoremap <C-j> <Esc>:m+<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

" if has('nvim')
"     " Find files using Telescope command-line sugar.
"     nnoremap <leader>ff <cmd>Telescope find_files<cr>
"     nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"     nnoremap <leader>fb <cmd>Telescope buffers<cr>
"     nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" endif

" -----------------------------------------------------------------------------
" Unite Keymap Menu Item(s)
" -----------------------------------------------------------------------------
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [
    \['➤ Quick exit Insert Mode                                        jj', 'echo "Use jj to exit insert mode"'],
    \['➤ Split current Pane Vertically                                 <Leader>sy', 'echo "Split current pane vertically"'],
    \['➤ Split current Pane Horizontally                               <Leader>sy', 'echo "Split current pane horizontally"'],
    \['➤ Change split screen (up)                                      <Leader>k', 'echo "Change to the current split screen to above"'],
    \['➤ Change split screen (down)                                    <Leader>j', 'echo "Change to the current split screen to below"'],
    \['➤ Change split screen (left)                                    <Leader>h', 'echo "Change to the current split screen to left"'],
    \['➤ Change split screen (right)                                   <Leader>l', 'echo "Change to the current split screen to right"'],
    \['➤ Move selected line(s) down                                    <C-j>', 'echo "Move line(s) Down"'],
    \['➤ Move selected line(s) up                                      <C-k>', 'echo "Use <C-k> to move selected Line(s) up"']
    \]
