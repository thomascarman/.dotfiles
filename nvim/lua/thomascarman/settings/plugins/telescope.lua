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
require('telescope').load_extension 'session-lens'

local Remap = require('thomascarman.utils.remap')

local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local tnoremap = Remap.tnoremap
local nmap = Remap.nmap

-- find file
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")

-- find word
nnoremap("<leader>lg", "<cmd>Telescope live_grep<CR>")

-- recent files
nnoremap("<leader>of", "<cmd>Telescope oldfiles<CR>")

-- find buffers
nnoremap("<leader>bf", "<cmd>Telescope buffers<CR>")

-- file browser
nnoremap("<leader>fb", "<cmd>Telescope file_browser<CR>")

-- find session
nnoremap("<leader>fs", "<cmd>lua require('session-lens').search_session()<CR>")

-- help
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")
