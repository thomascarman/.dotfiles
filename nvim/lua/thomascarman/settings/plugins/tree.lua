require("nvim-tree").setup()

require'nvim-web-devicons'.setup {
    override = {
        zsh = {
            icon = "",
            color = "#428850",
            cterm_color = "65",
            name = "Zsh",
        },
    },
    default = true,
}

local Remap = require('thomascarman.utils.remap')

local nnoremap = Remap.nnoremap

nnoremap('<leader>tt', ':NvimTreeToggle<CR>')
nnoremap('<leader>to', ':NvimTreeFocus<CR>')
nnoremap('<leader>tr', ':NvimTreeRefresh<CR>')
nnoremap('<leader>tf', ':NvimTreeFindFile<CR>')
