local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require "thomascarman.lsp.lsp-installer"
require("thomascarman.lsp.handlers").setup()
require "thomascarman.lsp.null-ls"
