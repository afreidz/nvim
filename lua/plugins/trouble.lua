local plugin = {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
}

local present, trouble = pcall(require, 'trouble')
if not present then return plugin end

trouble.setup {
  position = 'bottom',
  height = 10,
}

return plugin