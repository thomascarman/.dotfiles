local prettier_status_ok, prettier = pcall(require, "null-ls")
if not prettier_status_ok then
  return
end

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
    "svelte",
  },
  cli_options = {
      config_precedence = "prefer-file",
  },
})

local config_group = vim.api.nvim_create_augroup('PrettierGroup', {})

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  group = config_group,
  callback = function ()
    if vim.bo.filetype ~= 'git'
      and not vim.bo.filetype ~= 'gitcommit'
      then vim.cmd[[ Prettier ]] end
  end
})

local Remap = require('thomascarman.utils').remap

local nnoremap = Remap.nnoremap

-- find char
nnoremap("<leader>F", "<cmd>Prettier<cr>")

