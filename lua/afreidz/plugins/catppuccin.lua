print('test')
local present, cat = pcall(require, 'catppuccin')
if not present then return end

local gray = '#252530'
local colors = require('catppuccin.api.colors').get_colors()

cat.remap({
  TabLine = { bg = gray },
  NvimTreeNormal = { bg = gray },
  StatusLine = { fg = gray, bg = gray },
  NvimTreeVertSplit = { fg = gray, bg = gray },
  NvimTreeIndentMarker = { fg = colors.black4 },
  NvimTreeStatusLine = { fg = gray, bg = gray },
  NvimTreeStatusLineNC = { fg = gray, bg = gray },
  LspDiagnosticsDefaultHint = { fg = colors.peach },
  IndentBlanklineContextChar = { fg = colors.black4 },
})

cat.setup({
  integrations = {
    gitgutter = true,
    telescope = true,
    which_key = true,
    bufferline = true,
    nvimtree = { enabled = true, show_root = false },
  }
})
