require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
            },
        },
        --["core.integrations.telescope"] = {},
        --["core.integrations.nvim-cmp"] = {
        --    config = { -- Note that this table is optional and doesn't need to be provided
        --       -- Configuration here
        --    }
        --},
        ["core.norg.qol.toc"] = {},
        ["core.norg.concealer"] = {
            config = {
                icon_preset = 'diamond',
            }
        },
        ["core.gtd.base"] = {
            config = {
                workspace = 'work',
            }
        },
        --["external.gtd-project-tags"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/.vault/work",
                },
            },
        },
        ["core.norg.journal"] = {
            config = {
                strategy = 'flat',
                journal_folder = 'journal',
                template_name = 'journal.template.norg',
            },
        },
    },
}

local neorg_callbacks = require("neorg.callbacks")

neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
    -- Map all the below keybinds only when the "norg" mode is active
    keybinds.map_event_to_mode("norg", {
        n = { -- Bind keys in normal mode
            { "<C-s>", "core.integrations.telescope.find_linkable" },
        },

        i = { -- Bind in insert mode
            { "<C-l>", "core.integrations.telescope.insert_link" },
        },
    }, {
        silent = true,
        noremap = true,
    })
end)
-- 
-- local Remap = require('thomascarman.utils.remap')
-- 
-- local nnoremap = Remap.nnoremap
-- nnoremap("<leader>ww", ":NeorgStart<CR>")
