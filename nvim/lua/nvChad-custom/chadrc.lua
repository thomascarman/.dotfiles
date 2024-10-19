---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("configs.highlights")

M.base46 = {
	theme = "onedark",
	theme_toggle = { "gruvbox", "gruvbox_light" },
	transparency = false,
	hl_override = highlights.override,
	hl_add = highlights.add,
}

M.ui = {
	cmp = {
		icons_left = false,
		lspkind_text = true,
		style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
		format_colors = {
			tailwind = true, -- will work for css lsp too
			icon = "󱓻",
		},
	},
	telescope = { style = "borderless" }, -- borderless / bordered
}

M.nvdash = {
	load_on_startup = true,
	header = {
		"                            ",
		"     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
		"   ▄▀███▄     ▄██ █████▀    ",
		"   ██▄▀███▄   ███           ",
		"   ███  ▀███▄ ███           ",
		"   ███    ▀██ ███           ",
		"   ███      ▀ ███           ",
		"   ▀██ █████▄▀█▀▄██████▄    ",
		"     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
		"                            ",
		"     Powered By  eovim    ",
		"                            ",
	},

	buttons = {
		{ txt = "  Find File", keys = "<leader> ff", cmd = "Telescope find_files" },
		{ txt = "󰈚  Recent Files", keys = "<leader> fo", cmd = "Telescope oldfiles" },
		{ txt = "󰈭  Find Word", keys = "<leader> fw", cmd = "Telescope live_grep" },
		{ txt = "  Bookmarks", keys = "<leader> ma", cmd = "Telescope marks" },
		{ txt = "  Themes", keys = "<leader> th", cmd = "Telescope themes" },
		{ txt = "  Mappings", keys = "<leader> ch", cmd = "NvCheatsheet" },
	},
}

M.term = {
	sizes = { sp = 0.3, vsp = 0.5 },
	float = {
		row = 0.05,
		col = 0.1,
		width = 0.8,
		height = 0.8,
		border = "double",
	},
}

M.plugins = "custom.configs.overrides"

return M
