local present, bufferline = pcall(require, "bufferline")
if not present then return end

local theme_present, theme = pcall(require, "afcolors.api.colors");
local colors = theme.get_colors()
local highlights = {
  indicator_selected = {
    guifg = colors.sky,
    guibg = colors.black2,
  },
  fill = {
    guifg = colors.black4,
    guibg = colors.black3,
  },
  background = {
    guifg = colors.gray0,
    guibg = colors.black3,
  },
  buffer_selected = {
    guifg = colors.white,
    guibg = colors.black2,
    gui = "italic",
  },
  buffer_visible = {
    guifg = colors.gray0,
    guibg = colors.black2,
  },
  close_button = {
    guifg = colors.black4,
    guibg = colors.black3,
  },
  close_button_visible = {
    guifg = colors.black4,
    guibg = colors.black2,
  },
  close_button_selected = {
    guifg = colors.gray0,
    guibg = colors.black2,
  },
  separator = {
    guifg = colors.black3,
    guibg = colors.black3,
  },
  separator_visible = {
    guifg = colors.black3,
    guibg = colors.black3,
  },
  separator_selected = {
    guifg = colors.black3,
    guibg = colors.black3,
  }
}

local setup = {
  highlights = highlights,
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
    offsets = { { filetype = "NvimTree", text = " ", padding = 1, text_align = "left" } },
  },
}

bufferline.setup(setup);
