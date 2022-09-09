vim.opt.background = "dark"
vim.cmd[[colorscheme gruvbox]]
vim.cmd[[highlight clear SignColumn]]

local status_ok, transparent = pcall(require, "transparent")
if status_ok then
    transparent.setup { enable = false }
end

