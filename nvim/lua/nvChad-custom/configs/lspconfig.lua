-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "html", "cssls", "clangd", "ts_ls", "pyright", "bashls", "jsonls", "yamlls", "svelte" }

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
		handlers = {
			["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" }),
			["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" }),
		},
	})
end

-- lsps with custom config
vim.diagnostic.config({
	float = {
		border = "single",
	},
	signs = true,
	workspace = true,
})

-- This to open the diagnostic float window on hover
-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float()]])
