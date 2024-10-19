require("nvchad.mappings")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> wa <cr>")

-- formatting
map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "formatting" })
map("n", "<leader>F", "<cmd>Prettier<cr>", { desc = "formatting" })

map("n", "<leader>h", "<C-w>h")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>l", "<C-w>l")

-- Alteratives for Changing Buffers
map("n", "<leader><tab>", function()
	require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<leader><S-tab>", function()
	require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

-- screen splitting
map("n", "<leader>sh", "<cmd>split<cr>", { desc = "Window Horz plit" })
map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Window Vert Split" })

-- go to  beginning and end
map("n", "<A-b>", "<ESC>^i", { desc = "Beginning of line" })
map("n", "<A-e>", "<End>", { desc = "End of line" })

-- scrolling page
map("n", "<PageUp>", "<C-u>zz", { desc = "Scroll Up" })
map("n", "<PageDown>", "<C-d>zz", { desc = "Scroll Down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })

-- Todo Lists
map("n", "<leader>tl", "<cmd>TodoLocList<cr>", { desc = "TODO Loc List" })
map("n", "<leader>tq", "<cmd>TodoQuickFix<cr>", { desc = "TODO Quick Fix" })
map("n", "<leader>tt", "<cmd>TodoTelescope<cr>", { desc = "TODO Telescope" })

-- hop navigation
map("n", "f", function()
	require("hop").hint_char1({ direction = require("hop.hint").hint_anywhere, current_line_only = false })
end, { desc = "Find Char" })
map("n", "t", function()
	require("hop").hint_char1({
		direction = require("hop.hint").hint_anywhere,
		current_line_only = false,
		hint_offset = -1,
	})
end, { desc = "Find Char - Cursor Before" })
map("n", "s", function()
	require("hop").hint_char2({ direction = require("hop.hint").hint_anywhere, current_line_only = false })
	vim.cmd("norm! zz")
end, { desc = "Find 2 Char" })
map("n", "<leader><leader>j", function()
	require("hop").hint_lines_skip_whitespace({
		direction = require("hop.hint").HintDirection.AFTER_CURSOR,
		current_line_only = false,
		multi_windows = false,
	})
end, { desc = "Hop to Line Below" })
map("n", "<leader><leader>k", function()
	require("hop").hint_lines_skip_whitespace({
		direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
		current_line_only = false,
		multi_windows = false,
	})
end, { desc = "Hop to Line Above" })
map("n", "<leader>L", function()
	require("hop").hint_lines({ direction = require("hop.hint").hint_anywhere, current_line_only = false })
end, { desc = "Hop to Line" })
map("n", "<leader>w", function()
	require("hop").hint_words({ direction = require("hop.hint").hint_anywhere, current_line_only = false })
end, { desc = "Hop to Word" })

-- Telescope
map("n", "<leader><leader>i", "<cmd>Telescope emoji<cr>", { desc = "Open Icon Search" })

-- Harpoon
map("n", "<A-a>", function()
	require("harpoon.mark").add_file()
end, { desc = "Harpoon Add" })
map("n", "<A-e>", function()
	require("harpoon.ui").toggle_quick_menu()
end, { desc = "Harpoon View" })
map("n", "<A-1>", function()
	require("harpoon.ui").nav_file(1)
end, { desc = "Harpoon Goto 1" })
map("n", "<A-2>", function()
	require("harpoon.ui").nav_file(2)
end, { desc = "Harpoon Goto 2" })
map("n", "<A-3>", function()
	require("harpoon.ui").nav_file(3)
end, { desc = "Harpoon Goto 3" })
map("n", "<A-4>", function()
	require("harpoon.ui").nav_file(4)
end, { desc = "Harpoon Goto 4" })
map("n", "<A-5>", function()
	require("harpoon.ui").nav_file(5)
end, { desc = "Harpoon Goto 5" })
map("n", "<A-6>", function()
	require("harpoon.ui").nav_file(6)
end, { desc = "Harpoon Goto 6" })
map("n", "<A-7>", function()
	require("harpoon.ui").nav_file(7)
end, { desc = "Harpoon Goto 7" })
map("n", "<A-8>", function()
	require("harpoon.ui").nav_file(8)
end, { desc = "Harpoon Goto 8" })
map("n", "<A-9>", function()
	require("harpoon.ui").nav_file(9)
end, { desc = "Harpoon Goto 9" })
map("n", "<A-0>", function()
	require("harpoon.ui").nav_file(0)
end, { desc = "Harpoon Goto 0" })

local gitsigns_ok, gitsigns = pcall(require, "gitsigns")
if not gitsigns_ok then
	return
end

-- Git Navigation
map("n", "]c", function()
	gitsigns.nav_hunk("next")
end, { desc = "Git Next Hunk" })
map("n", "[c", function()
	gitsigns.nav_hunk("prev")
end, { desc = "Git Prev Hunk" })

-- Hunk Stage
map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "Git Stage Hunk" })
map("v", "<leader>gs", function()
	gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Git Stage Hunk" })
map("n", "<leader>gS", gitsigns.stage_buffer, { desc = "Git Stage Buffer" })

-- Hunk Reset
map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Git Reset Hunk" })
map("v", "<leader>gr", function()
	gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Git Reset Hunk" })
map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "Git Reset Buffer" })

-- Undo Stage Hunk
map("n", "<leader>gu", gitsigns.undo_stage_hunk, { desc = "Git Undo Stage Hunk" })

-- Hunk View
map("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Git Preview Hunk" })
map("n", "<leader>gb", function()
	gitsigns.blame_line({ full = true })
end, { desc = "Git View Blame Line" })
map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Git Toggle Blame Line" })
map("n", "<leader>td", gitsigns.toggle_deleted, { desc = "Git Toggle Deleted" })

-- Git Diffs
map("n", "<leader>gd", gitsigns.diffthis, { desc = "Git View Git Diff" })
map("n", "<leader>gD", function()
	gitsigns.diffthis("~")
end, { desc = "Git View Diff Origin" })

-- Git Telescope
map("n", "<leader>fg", "<cmd>Telescope git_files <CR>", { desc = "Git Find Git files" })
map("n", "<leader>gt", "<cmd>Telescope git_status <CR>", { desc = "Git Find Git status" })
map("n", "<leader>cm", "<cmd>Telescope git_commits <CR>", { desc = "Git Find Git commmits" })

map("n", "<leader>tw", "<cmd>Telescope vimwiki<CR>", { desc = "Vimwiki Page List" })
map("n", "<leader>ts", "<cmd>Telescope vimwiki live_grep<CR>", { desc = "Vimwiki Search" })

-- Document Search
map("n", "<leader><leader>fa", function()
	require("telescope.builtin").lsp_document_symbols()
end, { desc = "Find All Symbols" })
map("n", "<leader><leader>fv", function()
	require("telescope.builtin").lsp_document_symbols({ symbols = { "variable", "constant" } })
end, { desc = "Find Variables" })
map("n", "<leader><leader>ff", function()
	require("telescope.builtin").lsp_document_symbols({ symbols = "function" })
end, { desc = "Find Functions" })
map("n", "<leader><leader>fc", function()
	require("telescope.builtin").lsp_document_symbols({ symbols = "class" })
end, { desc = "Find Classes" })
