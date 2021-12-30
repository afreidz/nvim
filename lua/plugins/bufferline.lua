local plugin = {
  'akinsho/bufferline.nvim', 
  requires = 'kyazdani42/nvim-web-devicons',
}

local config = require('core.config')
local filetype = config.tree

if (filetype == 'nvimtree') then
  filetype = 'NvimTree'
end

-- Setup if present
local present, bufferline = pcall(require, 'bufferline')
if not present then return plugin end

bufferline.setup {
  options = {
    show_close_icon = false,
    separator_style = 'thin',
    show_buffer_close_icons = true,
    offsets = {{filetype = filetype, text = '  neovim', text_align = 'left' }},
  },
}

return plugin