---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },

		--  format with conform
		["<leader>fm"] = {
			function()
				require("conform").format()
			end,
			"formatting",
		},
		["<leader>F"] = {
			"<cmd>Prettier<cr>",
			"formatting",
		},

		-- screen splitting
		["<leader>sh"] = { "<cmd>split<cr>", "Window Horz plit" },
		["<leader>sv"] = { "<cmd>vsplit<cr>", "Window Vert Split" },

		-- switch between windows
		["<leader>h"] = { "<C-w>h", "Window left" },
		["<leader>l"] = { "<C-w>l", "Window right" },
		["<leader>j"] = { "<C-w>j", "Window down" },
		["<leader>k"] = { "<C-w>k", "Window up" },

		-- go to  beginning and end
		["<A-b>"] = { "<ESC>^i", "Beginning of line" },
		["<A-e>"] = { "<End>", "End of line" },

		-- scrolling page
		["<PageUp>"] = { "<C-u>zz", "Scroll Up" },
		["<PageDown>"] = { "<C-d>zz", "Scroll Down" },
		["<C-u>"] = { "<C-u>zz", "Scroll Up" },
		["<C-d>"] = { "<C-d>zz", "Scroll Down" },
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
}

M.nvterm = {
	n = {
		["<A-g>"] = {
			function()
				require("nvterm.terminal").send("lazygit", "float")
			end,
			"Lazygit",
		},
	},
}

M.gitsigns = {
	n = {
		["<leader>sb"] = { "<cmd>gitsigns stage_buffer<cr>", "Stage Buffer" },
		["<leader>sh"] = { "<cmd>gitsigns stage_hunk<cr>", "Stage Hunk" },
	},
}

M.telescope = {
	n = {
		["<leader><leader>i"] = { "<cmd>Telescope emoji<cr>", "Open Icon Search" },
		["<leader>fg"] = { "<cmd> Telescope git_files <CR>", "Find Git files" },
	},
}

M.harpoon = {
	n = {
		-- Adding / Ui Toggle
		["<A-a>"] = {
			function()
				require("harpoon.mark").add_file()
			end,
			"Add File",
		},
		["<A-e>"] = {
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
			"Open Harpoon File Menu",
		},

		-- Switching harpooned pages
		["<A-1>"] = {
			function()
				require("harpoon.ui").nav_file(1)
			end,
			"Navigate to File 1",
		},
		["<A-2>"] = {
			function()
				require("harpoon.ui").nav_file(2)
			end,
			"Navigate to File 2",
		},
		["<A-3>"] = {
			function()
				require("harpoon.ui").nav_file(3)
			end,
			"Navigate to File 3",
		},
		["<A-4>"] = {
			function()
				require("harpoon.ui").nav_file(4)
			end,
			"Navigate to File 4",
		},
		["<A-5>"] = {
			function()
				require("harpoon.ui").nav_file(5)
			end,
			"Navigate to File 5",
		},
		["<A-6>"] = {
			function()
				require("harpoon.ui").nav_file(6)
			end,
			"Navigate to File 6",
		},
		["<A-7>"] = {
			function()
				require("harpoon.ui").nav_file(7)
			end,
			"Navigate to File 7",
		},
		["<A-8>"] = {
			function()
				require("harpoon.ui").nav_file(8)
			end,
			"Navigate to File 8",
		},
		["<A-9>"] = {
			function()
				require("harpoon.ui").nav_file(9)
			end,
			"Navigate to File 9",
		},
		["<A-0>"] = {
			function()
				require("harpoon.ui").nav_file(0)
			end,
			"Navigate to File 0",
		},
	},
}

M.hop = {
	n = {

		-- find char
		["f"] = {
			function()
				require("hop").hint_char1({ direction = require("hop.hint").hint_anywhere, current_line_only = false })
				vim.cmd("norm! zz")
			end,
			"Find Char",
		},
		["t"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").hint_anywhere,
					current_line_only = false,
					hint_offset = -1,
				})
				vim.cmd("norm! zz")
			end,
			"Find Char - Move Cursor before",
		},
		["s"] = {
			function()
				require("hop").hint_char2({ direction = require("hop.hint").hint_anywhere, current_line_only = false })
				vim.cmd("norm! zz")
			end,
			"Find 2 Char",
		},

		-- find line
		["<leader><leader>j"] = {
			function()
				require("hop").hint_lines_skip_whitespace({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = false,
					multi_windows = false,
				})
				vim.cmd("norm! zz")
			end,
			"Hop to Line Below",
		},
		["<leader><leader>k"] = {
			function()
				require("hop").hint_lines_skip_whitespace({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = false,
					multi_windows = false,
				})
				vim.cmd("norm! zz")
			end,
			"Hop to Line Above",
		},
		["<leader>L"] = {
			function()
				require("hop").hint_lines({ direction = require("hop.hint").hint_anywhere, current_line_only = false })
				vim.cmd("norm! zz")
			end,
			"Hop to Line",
		},

		-- find word
		["<leader>w"] = {
			function()
				require("hop").hint_words({ direction = require("hop.hint").hint_anywhere, current_line_only = false })
				vim.cmd("norm! zz")
			end,
			"Hop to Word",
		},
	},
}

-- more keybinds!

return M
