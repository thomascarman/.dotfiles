---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gruvbox",
  theme_toggle = { "gruvbox", "gruvbox_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,
    header = {
      [[                                          /$$              ]],
      [[                                         |__/              ]],
      [[ /$$$$$$$   /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ ]],
      [[| $$__  $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$]],
      [[| $$  \ $$| $$$$$$$$| $$  \ $$ \  $$/$$/ | $$| $$ \ $$ \ $$]],
      [[| $$  | $$| $$_____/| $$  | $$  \  $$$/  | $$| $$ | $$ | $$]],
      [[| $$  | $$|  $$$$$$$|  $$$$$$/   \  $/   | $$| $$ | $$ | $$]],
      [[|__/  |__/ \_______/ \______/     \_/    |__/|__/ |__/ |__/]],
    },

    buttons = {
      { "  Find File", "<leader> ff", "Telescope find_files" },
      { "󰈚  Recent Files", "<leader> fo", "Telescope oldfiles" },
      { "󰈭  Find Word", "<leader> fw", "Telescope live_grep" },
      { "  Bookmarks", "<leader> ma", "Telescope marks" },
      { "  Themes", "<leader> th", "Telescope themes" },
      { "  Mappings", "<leader> ch", "NvCheatsheet" },
    },
  },

  telescope = { style = "bordered" }, -- borderless / bordered
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
