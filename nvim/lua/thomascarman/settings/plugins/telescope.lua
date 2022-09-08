require('telescope').setup {
    extenstions = {
        file_browser = {
            theme = 'ivy',
            hijack_netrw = true,
            mappings = {
            },
        },
    },
}

require('telescope').load_extension 'file_browser'

local Remap = require('thomascarman.utils.remap')

local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local tnoremap = Remap.tnoremap
local nmap = Remap.nmap

-- find file
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")

-- find word
nnoremap("<leader>of", "<cmd>lua require('telescope.builtin').live_grep()<CR>")

-- buffers
nnoremap("<leader>bf", "<cmd>lua require('telescope.builtin').buffers()<CR>")

-- file browser
nnoremap("<leader>fb", "<cmd>Telescope file_browser<CR>")

-- help
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")
