local overrides = require "configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- require "plugins.configs.lspconfig"
      require "configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  -- { "github/copilot.vim", lazy = false },
  { "MunifTanjim/prettier.nvim", lazy = false },
  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
      require("hop").setup {
        keys = "abcdefghijklmnopqrstuvwxyz;",
        case_insensitive = true,
        multi_windows = true,
        jump_on_sole_occurrence = false,
        create_hl_autocmd = false,
        uppercase_labels = true,
      }
    end,
  },

  {
    "ThePrimeagen/harpoon",
    lazy = false,
    requires = { "nvim-lua/plenary.nvim" },
  },

  {
    "xiyaowong/telescope-emoji.nvim",
    lazy = false,
    config = function()
      require("telescope").load_extension "emoji"
    end,
  },

  {
    "folke/todo-comments.nvim",
    lazy = false,
    config = function()
      require "configs.comments"
    end,
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  -- {
  -- 	"vimwiki/vimwiki",
  -- 	lazy = false,
  -- 	config = function()
  -- 		vim.g.vimwiki_list = {
  -- 			{
  -- 				path = "~/.vault/docs/",
  -- 				syntax = "markdown",
  -- 				ext = ".md",
  -- 				auto_tags = 1,
  -- 				auto_generate_tags = 0,
  -- 				auto_diary_index = 1,
  -- 			},
  -- 		}
  -- 		vim.g.vimwiki_hl_headers = 1
  -- 		vim.g.vimwiki_hl_cb_checked = 2
  -- 	end,
  -- },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
