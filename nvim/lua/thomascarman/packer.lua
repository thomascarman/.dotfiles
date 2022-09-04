return require('packer').startup(function()
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- colorscheme
    use { 'gruvbox-community/gruvbox' }

    -- Git
    use { 'f-person/git-blame.nvim' }
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

    -- airline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    } 
end)
