vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.optsofttabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.cmdheight = 1

vim.opt.updatetime = 50

vim.opt.shortmess:append("c")

vim.opt.textwidth = 80

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.noshellslash = true

vim.cmd[[set nofoldenable]]

-- netrw configs
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 1
vim.g.netrw_winsize = 25

vim.cmd[[set nofoldenable]]
