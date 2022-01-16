local cmd = vim.cmd
cmd ('colorscheme afcolors')

local colors = require('afcolors.api.colors').get_colors();
cmd('hi BufferLineFill guibg='..colors.black3)
