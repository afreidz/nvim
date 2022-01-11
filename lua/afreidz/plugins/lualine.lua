local present, lualine = pcall(require, "lualine")
if not present then return end

local mode = {
  "mode",
  fmt = function(str)
    if str == 'NORMAL' then return ' normal' end
    if str == 'INSERT' then return 'פֿ insert' end
    if str == 'COMMAND' then return ' command' end
    if str == 'VISUAL' then return '濾visual' end
    if str == 'REPLACE' then return '李replace' end
    return str
  end,
}

local location = {
  "location",
  padding = 0,
}

local progress = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end

local theme = {} 
local colors = require('catppuccin.api.colors').get_colors()
local overrides = require('afreidz.colors')

theme.normal = {
  a = { bg = overrides.black, fg = colors.blue, gui = "italic" },
  b = { bg = overrides.black, fg = colors.blue },
  c = { bg = overrides.black, fg = colors.blue },
  x = { bg = overrides.black, fg = colors.black4 },
  y = { bg = overrides.black, fg = colors.black4 },
  z = { bg = overrides.black, fg = colors.black4 },
}

theme.insert = {
  a = { bg = overrides.black, fg = colors.teal, gui = "italic" },
  b = { bg = overrides.black, fg = colors.teal },
  c = { bg = overrides.black, fg = colors.teal },
  x = { bg = overrides.black, fg = colors.black4 },
  y = { bg = overrides.black, fg = colors.black4 },
  z = { bg = overrides.black, fg = colors.black4 },
}

theme.command = {
  a = { bg = overrides.black, fg = colors.peach, gui = "italic" },
  b = { bg = overrides.black, fg = colors.peach },
  c = { bg = overrides.black, fg = colors.peach },
  x = { bg = overrides.black, fg = colors.black4 },
  y = { bg = overrides.black, fg = colors.black4 },
  z = { bg = overrides.black, fg = colors.black4 },
}

theme.visual = {
  a = { bg = overrides.black, fg = colors.magenta, gui = "italic" },
  b = { bg = overrides.black, fg = colors.magenta },
  c = { bg = overrides.black, fg = colors.magenta },
  x = { bg = overrides.black, fg = colors.black4 },
  y = { bg = overrides.black, fg = colors.black4 },
  z = { bg = overrides.black, fg = colors.black4 },
}

theme.replace = {
  a = { bg = overrides.black, fg = colors.red, gui = "italic" },
  b = { bg = overrides.black, fg = colors.red },
  c = { bg = overrides.black, fg = colors.red },
  x = { bg = overrides.black, fg = colors.black4 },
  y = { bg = overrides.black, fg = colors.black4 },
  z = { bg = overrides.black, fg = colors.black4 },
}

theme.inactive = {
  a = { bg = overrides.black, fg = colors.black4, gui = "italic" },
  b = { bg = overrides.black, fg = colors.black4 },
  c = { bg = overrides.black, fg = colors.black4 },
  x = { bg = overrides.black, fg = colors.black4 },
  y = { bg = overrides.black, fg = colors.black4 },
  z = { bg = overrides.black, fg = colors.black4 },
}


lualine.setup({
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { mode },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { location, progress },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})
