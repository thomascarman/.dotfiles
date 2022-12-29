vim.opt.background = "dark"
vim.cmd("colorscheme gruvbox")
vim.cmd('highlight clear SignColumn')
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')

local colorizer_ok, colorizer = pcall(require, "colorizer")
if colorizer_ok then
    colorizer.setup()
end
