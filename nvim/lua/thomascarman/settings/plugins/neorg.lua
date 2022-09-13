require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
            },
        },
        ["core.integrations.telescope"] = {},
        ["core.norg.qol.toc"] = {},
        ["core.norg.concealer"] = {
            config = {
                icon_preset = 'diamond',
                adaptive = false,
                conceallevel = 0,
                conceal = false,
            }
        },
        ["core.gtd.base"] = {
            config = {
                workspace = 'work',
            }
        },
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/.vault/work",
                    home = "~/.vault/home",
                },
            },
        },
        ["core.norg.journal"] = {
            config = {
                strategy = 'flat',
                journal_folder = 'diary',
                template_name = 'diary.template.norg',
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
