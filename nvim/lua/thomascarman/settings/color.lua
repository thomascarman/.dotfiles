vim.opt.background = "dark"
vim.cmd("colorscheme gruvbox")
vim.cmd('highlight clear SignColumn')

local colorizer_ok, colorizer = pcall(require, "colorizer")
if colorizer_ok then
    colorizer.setup()
end
