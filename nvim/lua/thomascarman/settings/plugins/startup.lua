local user_bookmarks = vim.g.startup_bookmarks
local bookmark_texts = { 'Bookmarks', '' }
local user_bookmark_mappings = {}

if not user_bookmarks then
    user_bookmarks = {}
    bookmark_texts = {}
end

for key, file in pairs(user_bookmarks) do
    bookmark_texts[#bookmark_texts+1] = key .. ' ' .. file
end

for key, file in pairs(user_bookmarks) do
    user_bookmark_mappings[key] = "<cmd>e " .. file .. "<CR>"
end

require('startup').setup({
    --theme = 'dashboard',
    header = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Header',
        margin = 5,
        content = function()
            return require('startup.headers').hydra_header
        end,
        highlight = 'Statement',
        default_color = '',
        oldfiles_amount = 0,
    },
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { " Find File", "Telescope find_files", "<leader>ff" },
            { " Find Word", "Telescope live_grep", "<leader>lg" },
            { " Recent Files", "Telescope oldfiles", "<leader>of" },
            { " File Browser", "Telescope file_browser", "<leader>fb" },
            { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
            { " New File", "lua require'startup'.new_file()", "<leader>nf" },
            { "⌚Sessions", "lua require'session-lens'.search_session()", "<leader>fs" },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
    },
    bookmarks = {
        type = 'text',
        align = 'center',
        margin = 5,
        content = bookmark_texts,
        highlight = 'String',
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = function()
            return require("startup.functions").packer_plugins()
        end,
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = {1, 3, 3, 3, 0},
        after = function ()
            require('startup').create_mappings(user_bookmark_mappings)
            require('startup.utils').oldfiles_mappings()
        end
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { 'header', 'body', 'bookmarks', 'footer' },
})
