local g = vim.g
g.nvim_tree_git_hl = 0
g.nvim_tree_add_trailing = 0
g.nvim_tree_quit_on_open = 0
g.nvim_tree_indent_markers = 1
g.nvim_tree_highlight_opened_files = 0
g.nvim_tree_root_folder_modifier = ':'
g.nvim_tree_root_folder_modifier = table.concat { ':t:gs?$?/..', string.rep(' ', 1000), '?:gs?^??' }
g.nvim_tree_window_picker_exclude = {
  filetype = { 'notify', 'packer', 'qf' },
  buftype = { 'terminal' },
}
g.nvim_tree_show_icons = {
  folders = 1,
  files = 1,
  git = 0,
}
g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    deleted = '',
    ignored = '◌',
    renamed = '➜',
    staged = '✓',
    unmerged = '',
    unstaged = '✗',
    untracked = '★',
  },
  folder = {
    default = '',
    empty = '',
    empty_open = '',
    open = '',
    symlink = '',
    symlink_open = '',
  },
}

local present, nvim_tree = pcall(require, "nvim-tree")
if not present then return end

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 30,
    hide_root_folder = true,
    side = "left",
    auto_resize = true,
    number = false,
    relativenumber = false,
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  quit_on_open = 0,
  git_hl = 1,
  disable_window_picker = 1,
}
