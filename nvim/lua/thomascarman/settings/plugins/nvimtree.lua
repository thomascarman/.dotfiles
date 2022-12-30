local nvim_tree_ok, nvim_tree = pcall(require, 'nvim-tree')
if not nvim_tree_ok then
    return
end

nvim_tree.setup {
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    filters = {
        dotfiles = true
    },
}

require'nvim-web-devicons'.setup {
    override = {
        lua = {
            icon = "",
            color = "#428850",
            cterm_color = "65",
            name = "Zsh",
        },
    },
    default = true,
}

local Remap = require('thomascarman.utils').remap

local nnoremap = Remap.nnoremap

nnoremap('<leader>to', ':NvimTreeFocus<CR>')
nnoremap('<leader>tt', ':NvimTreeToggle<CR>')
nnoremap('<leader>tr', ':NvimTreeRefresh<CR>')
nnoremap('<leader>tf', ':NvimTreeFindFile<CR>')

