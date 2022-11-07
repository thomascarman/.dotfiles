if vim.g.vscode then
    require 'thomascarman.settings'
    require 'thomascarman.vscode'
    require 'thomascarman.settings.plugins.hop'
else
    require 'thomascarman.neovide'
    require 'thomascarman.settings'
    require 'thomascarman.bookmarks'
    require 'thomascarman.plugins'
    require 'thomascarman.settings.plugins'
    require 'thomascarman.cmp'
    require 'thomascarman.lsp'
end