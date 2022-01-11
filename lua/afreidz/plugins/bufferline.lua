local present, bufferline = pcall(require, "bufferline")
if not present then return end

local setup = {
  options = {
    tab_size = 21,
    numbers = "none", 
    diagnostics = false,
    modified_icon = "●",
    indicator_icon = "▎",
    max_name_length = 30,
    max_prefix_length = 30, 
    left_trunc_marker = "",
    buffer_close_icon = "",
    show_close_icon = false,
    right_trunc_marker = "",
    show_buffer_icons = true,
    separator_style = "thin",
    middle_mouse_command = nil,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    enforce_regular_tabs = true,
    close_command = "Bdelete! %d",
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    left_mouse_command = "buffer %d",
    right_mouse_command = "Bdelete! %d",
    diagnostics_update_in_insert = false,
    offsets = { { filetype = "NvimTree", text = "  neovim", padding = 1, text_align = "left" } },
  },
}

local theme_present, theme = pcall(require, 'catppuccin.api.colors')

if not theme_present then
  bufferline.setup(setup);
  return
end

local colors = theme.get_colors()
local overrides = require('afreidz.colors')

local highlights = {
  tab = { guibg = overrides.gray },
  fill = { guibg = overrides.gray },
  background = { guibg = overrides.gray },
  close_button = { guibg = overrides.gray },
  tab_selected = { guibg = overrides.black },
  buffer_visible = { guibg = overrides.gray },
  modified_visible = { guibg = overrides.gray },
  duplicate_visible = { guibg = overrides.gray },
  indicator_selected = { guifg = overrides.black },
  close_button_visible = { guibg = overrides.gray },
  separator = { guibg = overrides.gray, guifg = overrides.gray },
}

setup.highlights = highlights
bufferline.setup(setup);
