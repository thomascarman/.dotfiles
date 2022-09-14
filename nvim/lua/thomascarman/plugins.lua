return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- colorscheme
    use { 'gruvbox-community/gruvbox' }
    use { 'xiyaowong/nvim-transparent' }
    use { 'norcalli/nvim-colorizer.lua' }

    -- Git
    use { 'lewis6991/gitsigns.nvim' }

    -- airline
    use {
        'kdheepak/tabline.nvim',
        requires = { 'nvim-lualine/lualine.nvim', 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- navigation
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = { { 'kyazdani42/nvim-web-devicons' }}
    }

    -- sessions
    use {
        'rmagatti/session-lens',
        requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    }

    -- startup
    use { 'startup-nvim/startup.nvim' }

    -- Emoji
    use "stevearc/dressing.nvim"
    use {
        "ziontee113/icon-picker.nvim",
        config = function()
            require("icon-picker").setup({
                disable_legacy_commands = true
            })
        end,
    }

    -- utils
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }
    use { 'akinsho/toggleterm.nvim' }
    use { 'github/copilot.vim' }
    use { 'chentoast/marks.nvim' }

    -- CMP
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "saadparwaiz1/cmp_luasnip" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-nvim-lua" }

    -- Snippets
    use { "L3MON4D3/LuaSnip" }
    use { "rafamadriz/friendly-snippets" }

    -- LSP
    use { "neovim/nvim-lspconfig" }
    use { "williamboman/nvim-lsp-installer" }
    use { "jose-elias-alvarez/null-ls.nvim" }
    use { "RRethy/vim-illuminate" }

    -- treesitter
    use { "nvim-treesitter/nvim-treesitter" }

    -- notes
    --use {
    --    'vimwiki/vimwiki',
    --    config = function()
    --        vim.g.vimwiki_list = {
    --            {
    --                path = '~/.vault/docs/',
    --                syntax = 'markdown', ext = '.md',
    --                auto_tags = 1, auto_generate_tags = 0,
    --                auto_diary_index = 1
    --            }
    --        }

    --        vim.g.vimwiki_hl_headers = 1
    --        vim.g.vimwiki_hl_cb_checked = 2
    --    end
    --}
    use {
        "nvim-neorg/neorg",
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-neorg/neorg-telescope',
        },
    }
    -- use {
    --     "nvim-orgmode/orgmode",
    --     config = function()
    --         require('orgmode').setup{}
    --     end,
    -- }

    -- games
    use { 'alec-gibson/nvim-tetris' }
    use { 'seandewar/nvimesweeper' }
    use { 'ThePrimeagen/vim-be-good' }
    use { 'seandewar/killersheep.nvim' }
end)
