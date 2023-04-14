-- Set color scheme
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/gruvbox'
if vim.fn.empty(vim.fn.glob(install_path)) <= 0 then
    -- Only doing pcalls here because i cant figure out right now why treesetter
    -- doesnt like calling vim.cmd
    pcall(vim.cmd, 'colorscheme gruvbox')
end

-- Colorizer used to show Hex with background
local colorizer_ok, colorizer = pcall(require, "colorizer")
if colorizer_ok then
    colorizer.setup()
end

vim.g.gruvbox_contrast_light = 'soft'
vim.g.gruvbox_contrast_dark = 'medium'

vim.opt.background = "dark"

pcall(vim.cmd, 'highlight Normal guibg=NONE ctermbg=NONE')
pcall(vim.cmd, 'highlight clear SignColumn')
