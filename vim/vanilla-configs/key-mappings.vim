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
nnoremap <leader>vc :!code .<CR>
nnoremap <leader>vt :term<SPACE>
nnoremap <leader>vl :IndentLinesToggle<CR>
nnoremap <leader>vf :term npm run format<CR>

nnoremap <leader>sx :split<CR>
nnoremap <leader>sy :vsplit<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>. :resize +5<CR>
nnoremap <silent> <leader>, :resize -5<CR>

nnoremap <C-m> :tabn<CR>
nnoremap <C-b> :tabp<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-s> :wa<CR>

nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-k> <Esc>:m-2<CR>==gi
inoremap <C-j> <Esc>:m+<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

" if has('nvim')
"     " Find files using Telescope command-line sugar.
"     nnoremap <leader>ff <cmd>Telescope find_files<cr>
"     nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"     nnoremap <leader>fb <cmd>Telescope buffers<cr>
"     nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" endif
