local config = require('core.config')
local plugin = {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
}

local present, treesitter = pcall(require, 'nvim-treesitter.configs')
if not present then return plugin end

treesitter.setup {
  indent = { enable = true },
  highlight = { enable = true },
  ensure_installed = config.langs,
}

return plugin