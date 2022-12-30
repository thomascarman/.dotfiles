local opts = { noremap = true, silent = true }

local iconpicker_ok, iconpicker = pcall(require, 'icon-picker')
if not iconpicker_ok then
    return
end

iconpicker.setup {
    disable_legacy_commands = true
}

vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
