local session_ok, session_manager = pcall(require, 'session_manager')
if not session_ok then
    return
end

session_manager.setup({
    sessions_dir = vim.fn.stdpath('data') .. '/sessions',
    path_replacer = '__',
    colon_replacer = '++',
    autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir,
    autosave_last_session = true,
    autosave_ignore_not_normal = true,
    autosave_ignore_dirs = {},
    autosave_ignore_filetypes = {
        'gitcommit',
    },
    autosave_ignore_buftypes = {},
    autosave_only_in_session = true,
    max_path_length = 80,
})

local config_group = vim.api.nvim_create_augroup('SessionGroup', {})

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  group = config_group,
  callback = function ()
    if vim.bo.filetype ~= 'git'
      and not vim.bo.filetype ~= 'gitcommit'
      then session_manager.autosave_session() end
  end
})

local Remap = require('thomascarman.utils').remap

local nnoremap = Remap.nnoremap

nnoremap('<leader>sl', ':SessionManager load_session<CR>')
nnoremap('<leader>ss', ':SessionManager save_current_session<CR>')
nnoremap('<leader>sd', ':SessionManager delete_session<CR>')

