local utils_ok, utils = pcall(require, 'thomascarman.utils')
if not utils_ok then
    return
end

local nvimConfig = '~/.config/nvim/'
if utils.getOSName() == 'Windows' then
    nvimConfig = '~/AppData/Local/nvim/'
end

vim.g.startup_bookmarks = {
    ["D"] = '~/.dotfiles/',
    ["N"] = nvimConfig,
    ["V"] = '~/.vault',
    ["W"] = '~/workspace',
    ["S"] = '~/Sketches',
}
