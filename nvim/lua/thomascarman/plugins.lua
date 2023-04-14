local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

-- Run to check if packer exist and install if not
local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- colorscheme
    use { 'gruvbox-community/gruvbox' }
    --use { 'norcalli/nvim-colorizer.lua' }
    use { 'brenoprata10/nvim-highlight-colors' }

    -- Git
    use { 'lewis6991/gitsigns.nvim' }

    -- airline
    use {
        'kdheepak/tabline.nvim',
        requires = { 'nvim-lualine/lualine.nvim', 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- navigation
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { { 'nvim-tree/nvim-web-devicons' }}
    }
    use {
        'ThePrimeagen/harpoon',
        requires = { { 'nvim-lua/plenary.nvim' }}
    }
    use { 'petertriho/nvim-scrollbar' }

    -- sessions
    use {
        'Shatur/neovim-session-manager',
        requires = { { 'nvim-lua/plenary.nvim' }}
    }

    -- startup
    use { 'startup-nvim/startup.nvim' }

    -- Emoji
    use "stevearc/dressing.nvim"
    use "ziontee113/icon-picker.nvim"
    use { 'folke/todo-comments.nvim' }

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

    -- formating
    use { "MunifTanjim/prettier.nvim" }

    -- notes
    use {
        'vimwiki/vimwiki',
        config = function()
            vim.g.vimwiki_list = {
                {
                    path = '~/.vault/2023/',
                    syntax = 'default', ext = '.wiki',
                    auto_tags = 1, auto_generate_tags = 0,
                    auto_diary_index = 1
                },
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

    -- games
    use { 'alec-gibson/nvim-tetris' }
    use { 'seandewar/nvimesweeper' }
    use { 'ThePrimeagen/vim-be-good' }
    use { 'seandewar/killersheep.nvim' }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
