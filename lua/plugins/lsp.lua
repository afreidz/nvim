local config = require('core.config')
local plugin = { 'neovim/nvim-lspconfig' }

local present, lsp = pcall(require, 'lspconfig')
if not present then return plugin end

lsp.tsserver.setup{}
lsp.svelte.setup{}
lsp.eslint.setup{}
lsp.cssls.setup{}
lsp.html.setup{}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({ virtual_text = false })
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

return plugin