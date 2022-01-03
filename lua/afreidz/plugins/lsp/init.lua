local present, _ = pcall(require, "lspconfig")
if not present then return end

require "afreidz.plugins.lsp.installer"
require("afreidz.plugins.lsp.handlers").setup()
require "afreidz.plugins.lsp.null"
