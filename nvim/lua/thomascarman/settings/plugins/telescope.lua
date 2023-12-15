local telescope_ok, telescope = pcall(require, 'telescope')
if not telescope_ok then
    return
end

telescope.setup {
    extenstions = {
        file_browser = {
            theme = 'ivy',
            hijack_netrw = true,
            mappings = {
            },
        },
    },
}

telescope.load_extension 'file_browser'
telescope.load_extension 'harpoon'

local Remap = require('thomascarman.utils').remap

local nnoremap = Remap.nnoremap

-- find file
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")

-- find git files
nnoremap("<leader>fg", "<cmd>Telescope git_files<CR>")

-- find word
nnoremap("<leader>lg", "<cmd>Telescope live_grep<CR>")

-- recent files
nnoremap("<leader>of", "<cmd>Telescope oldfiles<CR>")

-- find buffers
nnoremap("<leader>bf", "<cmd>Telescope buffers<CR>")

-- file browser
nnoremap("<leader>fb", "<cmd>Telescope file_browser<CR>")

-- find session
nnoremap("<leader>fs", "<cmd>SessionManager load_session<CR>")

-- help
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")

-- harpoon
nnoremap("<leader>fv", "<cmd>Telescope harpoon marks<CR>")
