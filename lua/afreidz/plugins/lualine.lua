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

lualine.setup({
  options = {
    icons_enabled = true,
    theme = "afcolors",
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
