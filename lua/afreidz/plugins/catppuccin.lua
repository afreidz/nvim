local present, cat = pcall(require, 'catppuccin')
if not present then return end

local gray = '#252530'
local colors = require('catppuccin.api.colors').get_colors()

cat.remap({
  TabLine = { bg = gray },
  NvimTreeNormal = { bg = gray },
  TabLineSel = { bg = colors.black2 },
  NormalFloat = { bg = colors.black2 },
  DiagnosticHint = { fg = colors.sky },
  StatusLine = { fg = gray, bg = gray },
  WhichKeyFloat = { bg = colors.black2 },
  LspDiagnosticsHint = { fg = colors.sky },
  NvimTreeVertSplit = { fg = gray, bg = gray },
  NvimTreeIndentMarker = { fg = colors.black4 },
  NvimTreeStatusLine = { fg = gray, bg = gray },
  DiagnosticUnderlineHint = { sp = colors.sky },
  LspDiagnosticsDefaultHint = { fg = colors.sky },
  NvimTreeStatusLineNC = { fg = gray, bg = gray },
  DiagnosticUnderlineWarn = { gui = "undercurl" },
  DiagnosticUnderlineInfo = { gui = "undercurl" },
  DiagnosticUnderlineHint = { gui = "undercurl" },
  DiagnosticUnderlineError = { gui = "undercurl" },
  LspDiagnosticsUnderlineHint = { sp = colors.sky },
  Folded = { bg = colors.black2, fg = colors.black4 },
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
