---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("configs.highlights")

M.ui = {
	theme = "gruvchad",
	theme_toggle = { "gruvchad", "gruvchad_light" },

	hl_override = highlights.override,
	hl_add = highlights.add,
	-- transparency = true,

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

	term = {
		sizes = { sp = 0.3, vsp = 0.5 },
		float = {
			relative = "editor",
			row = 0.05,
			col = 0.1,
			width = 0.8,
			height = 0.8,
			border = "double",
		},
	},
}

M.term = {}

M.plugins = "custom.configs.overrides"

return M
