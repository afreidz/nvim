local present, cat = pcall(require, 'catppuccin')
if not present then return end

local colors = require('catppuccin.api.colors').get_colors()
local overrides = require('afreidz.colors')

cat.setup({
  transparent_background = true,
  integrations = {
    gitgutter = true,
    telescope = true,
    which_key = true,
    nvimtree = { enabled = true, show_root = false },
  }
})

cat.remap({
  Normal = { bg = overrides.black },
  NormalFloat = { bg = overrides.gray },
  WhichKeyFloat = { bg = overrides.black },
  NvimTreeNormal = { bg = overrides.gray },
  NvimTreeIndentMarker = { fg = colors.black4 },
  DiagnosticUnderlineWarn = { gui = "undercurl" },
  DiagnosticUnderlineInfo = { gui = "undercurl" },
  DiagnosticUnderlineHint = { gui = "undercurl" },
  DiagnosticUnderlineError = { gui = "undercurl" },
  IndentBlanklineContextChar = { fg = colors.black4 },
  Folded = { bg = overrides.black, fg = colors.black4 },
  StatusLine = { fg = overrides.gray, bg = overrides.gray },
  NvimTreeVertSplit = { fg = overrides.gray, bg = overrides.gray },
  NvimTreeStatusLine = { fg = overrides.gray, bg = overrides.gray },
  NvimTreeStatusLineNC = { fg = overrides.black, bg = overrides.gray },
})

