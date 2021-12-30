local plugin = {
  'catppuccin/nvim',
}

-- Setup if present
local present, catppuccin = pcall(require, 'catppuccin')
if not present then return plugin end

local colors = require('catppuccin.api.colors').get_colors()
catppuccin.remap({
  DiagnosticHint = { fg = colors.catppuccin7 },
  NvimTreeFolderIcon = { fg = colors.catppuccin16 },
  NvimTreeIndentMarker = { fg = colors.catppuccin16 },
  DiagnosticUnderlineHint = { fg = colors.catppuccin7 },
  IndentBlanklineContextChar = { fg = colors.catppuccin16 },
})

catppuccin.setup({
  transparent_background = true,
  term_colors = true,
  styles = {
    strings = 'NONE',
    variables = 'NONE',
    comments = 'italic',
    keywords = 'italic',
    functions = 'italic',
  },
  integrations = {
    indent_blankline = {
      enabled = false,
      colored_indent_levels = false,
    },
    gitgutter = true,
    treesitter = true,
    native_lsp = {
      enabled = true,
    },
    telescope = true,
    bufferline = true,
    nvimtree = {
      enabled = false,
      show_root = false,
    },
  },
})

return plugin