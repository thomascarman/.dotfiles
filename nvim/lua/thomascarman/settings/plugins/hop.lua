require('hop').setup {
    keys = 'abcdefghijklmnopqrstuvwxyz;',
    case_insensitive = true,
    multi_windows = true,
    jump_on_sole_occurrence = false,
    create_hl_autocmd = false,
    uppercase_labels = true,
}

local Remap = require('thomascarman.remap')

local nnoremap = Remap.nnoremap

-- find char
nnoremap("f", "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.hint_anywhere, current_line_only = false })<cr>")
nnoremap("t", "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.hint_anywhere, current_line_only = false, hint_offset = -1 })<cr>")
nnoremap("s", "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.hint_anywhere, current_line_only = false })<cr>")

-- find line
nnoremap("<leader><leader>j", "<cmd>lua require'hop'.hint_lines_skip_whitespace({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, multi_windows = false })<cr>")
nnoremap("<leader><leader>k", "<cmd>lua require'hop'.hint_lines_skip_whitespace({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, multi_windows = false })<cr>")
nnoremap("<leader>L", "<cmd>lua require'hop'.hint_lines({ direction = require'hop.hint'.hint_anywhere, current_line_only = false })<cr>")

-- find word
nnoremap("<leader>w", "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.hint_anywhere, current_line_only = false })<cr>")
