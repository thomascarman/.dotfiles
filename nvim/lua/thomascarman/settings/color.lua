vim.opt.background = "dark"

-- Set color scheme
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/gruvbox'
if vim.fn.empty(vim.fn.glob(install_path)) <= 0 then
    vim.cmd[[colorscheme gruvbox]]
end

vim.cmd('highlight clear SignColumn')
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')


-- Colorizer used to show Hex with background
local colorizer_ok, colorizer = pcall(require, "colorizer")
if colorizer_ok then
    colorizer.setup()
end
