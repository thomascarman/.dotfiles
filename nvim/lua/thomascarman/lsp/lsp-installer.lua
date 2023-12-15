local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local servers = {
  "cssls",
  "html",
  "tsserver",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "svelte",
  "omnisharp"
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("thomascarman.lsp.handlers").on_attach,
    capabilities = require("thomascarman.lsp.handlers").capabilities,
  }

  if server == "sumneko_lua" then
    local lsp_opts = require "thomascarman.lsp.settings.lsp_ls"
    opts = vim.tbl_deep_extend("force", lsp_opts, opts)
  end
  
  if server == "pyright" then
    local pyright_opts = require "thomascarman.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "omnisharp" then
    local omnisharp_opts = require "thomascarman.lsp.settings.omnisharp"
    opts = vim.tbl_deep_extend("force", omnisharp_opts, opts)
  end

  lspconfig[server].setup(opts)
end
