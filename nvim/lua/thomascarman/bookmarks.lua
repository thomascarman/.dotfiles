local utils_ok, utils = pcall(require, 'thomascarman.utils')
if not utils_ok then
  return
end

local nvimConfig = '~/.config/nvim'
if utils.getOSName() == 'Windows' then
  nvimConfig = '~/AppData/Local/nvim'
end

local bookmarks = {
  ["D"] = '~/.dotfiles',
  ["V"] = '~/.vault',
  ["N"] = nvimConfig,
  ["W"] = '~/workspace',
  ["S"] = '~/Sketches',
}

for key, value in pairs(bookmarks) do
  if not utils.exists(value) then
    -- Remove Key from bookmarks in not exists
    bookmarks[key] = nil
  end
end

vim.g.startup_bookmarks = bookmarks
