local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		css = { "prettier" },
		html = { "prettier" },
		javascript = { "prettier" },
		less = { "prettier" },
		markdown = { "prettier" },
		scss = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },

		sh = { "shfmt" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 2500,
		lsp_fallback = true,
	},
}

require("conform").setup(options)
