local osName = require('thomascarman.utils.os')

local nvimConfig = '~/.config/nvim/'
if osName() == 'Windows' then
    nvimConfig = '~/AppData/Local/nvim/'
end
vim.g.startup_bookmarks = {
    ["D"] = '~/.dotfiles/',
    ["N"] = nvimConfig,
    ["V"] = '~/.vault/docs/',
    ["W"] = '~/workspace',
}
