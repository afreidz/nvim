local cmd = vim.cmd
local overrides = require('afreidz.colors')
local colors = require('catppuccin.api.colors').get_colors()

cmd ('colorscheme catppuccin')
cmd ('hi BufferOffset guibg='..overrides.gray)
cmd ('hi BufferVisible guibg='..overrides.gray)
cmd ('hi BufferTabpageFill guibg='..overrides.gray)
cmd ('hi BufferInactiveSign guifg='..colors.black4)
cmd ('hi NvimTreeStatusLineNC guibg='..overrides.gray)
cmd ('hi BufferInactive guibg='..overrides.gray..' guifg='..colors.black4)
cmd [[
  hi DiagnosticUnderlineWarn gui=undercurl
  hi DiagnosticUnderlineInfo gui=undercurl
  hi DiagnosticUnderlineHint gui=undercurl
  hi DiagnosticUnderlineError gui=undercurl
]]
