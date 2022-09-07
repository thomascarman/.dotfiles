vim.g.startup_bookmarks = {
    ["N"] = '~/.vault/docs',
    ["C"] = '~/.dotfiles/',
    ["B"] = '~/.dotfiles/bashrc',
    ["Z"] = '~/.dotfiles/zshrc',
    ["V"] = '~/.dotfiles/vimrc',
}

require('startup').setup({
    theme = 'startify'
})
