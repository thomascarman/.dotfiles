local Remap = require('thomascarman.utils.remap')

local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local tnoremap = Remap.tnoremap

inoremap("jj", "<Esc>")
nnoremap("<leader>sh", ":split<CR>")
nnoremap("<leader>sv", ":vsplit<CR>")

nnoremap("<leader>h", ":wincmd h<CR>")
nnoremap("<leader>j", ":wincmd j<CR>")
nnoremap("<leader>l", ":wincmd l<CR>")
nnoremap("<leader>k", ":wincmd k<CR>")

nnoremap("<leader>co", ":copen<CR>")
nnoremap("<leader>cc", ":cclose<CR>")
nnoremap("<leader>cp", ":cprev<CR>")
nnoremap("<leader>cn", ":cnext<CR>")

nnoremap("<silent> <localleader>+", ":vertical resize +5<CR>")
nnoremap("<silent> <localleader>_", ":vertical resize -5<CR>")
nnoremap("<silent> <localleader>>", ":resize +5<CR>")
nnoremap("<silent> <localleader>,", ":resize -5<CR>")

nnoremap("<leader>1", "1gt<CR>")
nnoremap("<leader>2", "2gt<CR>")
nnoremap("<leader>3", "3gt<CR>")
nnoremap("<leader>4", "4gt<CR>")
nnoremap("<leader>5", "5gt<CR>")
nnoremap("<leader>6", "6gt<CR>")
nnoremap("<leader>7", "7gt<CR>")
nnoremap("<leader>8", "8gt<CR>")
nnoremap("<leader>9", "9gt<CR>")
nnoremap("<leader>0", "0gt<CR>")
nnoremap("<leader>=", ":tabn<CR>")
nnoremap("<leader>+", ":tabmove+<CR>")
nnoremap("<leader>-", ":tabp<CR>")
nnoremap("<leader>_", ":tabmove-<CR>")
nnoremap("<C-n>", ":tabnew<CR>")
nnoremap("<S-n>", ":tabclose<CR>")

nnoremap("<C-j>", ":m+<CR>==")
nnoremap("<C-k>", ":m-2<CR>==")
vnoremap("<C-j>", ":m'>+<CR>gv=gv")
vnoremap("<C-k>", ":m-2<CR>gv=gv")

nnoremap("<leader>gs", ":Neogit<CR>")

-- To map <Esc> to exit terminal-mode
tnoremap("<A-c>", "<C-\\><C-n>")

-- To use `ALT+{h,j,k,l}` to navigate windows from any mode
tnoremap("<A-h>", "<C-\\><C-N><C-w>h")
tnoremap("<A-j>", "<C-\\><C-N><C-w>j")
tnoremap("<A-k>", "<C-\\><C-N><C-w>k")
tnoremap("<A-l>", "<C-\\><C-N><C-w>l")
inoremap("<A-h>", "<C-\\><C-N><C-w>h")
inoremap("<A-j>", "<C-\\><C-N><C-w>j")
inoremap("<A-k>", "<C-\\><C-N><C-w>k")
inoremap("<A-l>", "<C-\\><C-N><C-w>l")
nnoremap("<A-h>", "<C-w>h")
nnoremap("<A-j>", "<C-w>j")
nnoremap("<A-k>", "<C-w>k")
nnoremap("<A-l>", "<C-w>l")

