local augroup = require('thomascarman.augroup')

return require('packer').startup(function()
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- colorscheme
    use { 'gruvbox-community/gruvbox' }

    -- Git
    use { 'lewis6991/gitsigns.nvim' }
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

    -- airline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    } 
    -- startup
    use { 'startup-nvim/startup.nvim' }

    -- utils
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }
    use { 'akinsho/toggleterm.nvim' }

    -- notes
    use {
        'vimwiki/vimwiki',
        config = function()
            vim.g.vimwiki_list = {
                {
                    path = '~/.vault/docs/',
                    syntax = 'markdown', ext = '.md',
                    auto_tags = 1, auto_generate_tags = 0,
                    auto_diary_index = 1
                }
            }
            
            vim.g.vimwiki_hl_headers = 1
            vim.g.vimwiki_hl_cb_checked = 2
        end
    }
end)
