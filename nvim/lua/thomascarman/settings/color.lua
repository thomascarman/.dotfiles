vim.opt.background = "dark"
vim.cmd[[colorscheme gruvbox]]
vim.cmd[[highlight clear SignColumn]]

local status_ok, transparent = pcall(require, "transparent")
local enable = false
if vim.g.neovide then
    enable = true
end
if status_ok then
    transparent.setup { enable = enable }
end

local colorizer_ok, colorizer = pcall(require, "colorizer")
if colorizer_ok then
    colorizer.setup()
end
