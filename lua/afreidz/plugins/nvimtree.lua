local present, tree = pcall(require, "nvim-tree")
if not present then return end

local cb = require("nvim-tree.config").nvim_tree_callback
local icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

local mappings = {
  { key = "d", cb = cb("trash") },
  { key = "q", cb = cb("close") },
  { key = "R", cb = cb("rename") },
  { key = "c", cb = cb("create") },
  { key = "r", cb = cb("refresh") },
  { key = ".", cb = cb("dir_up") },
  { key = "y", cb = cb("copy_path") },
  { key = "yn", cb = cb("copy_name") },
  { key = "<bs>", cb = cb("close_node") },
  { key = "h", cb = cb("toggle_ignored") },
  { key = "h", cb = cb("toggle_dotfiles") },
  { key = "yy", cb = cb("copy_absolute_path") },
  { key = { "<cr>", "<2-LeftMouse>"}, cb = cb("edit") },
}

local g = vim.g
g.nvim_tree_git_hl = 1
g.nvim_tree_icons = icons
g.nvim_tree_indent_markers = 1
g.nvim_tree_disable_window_picker = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_show_icons = { folder_arrows = 0 }

tree.setup {
  update_cwd = true,
  auto_close = true,
  disable_netrw = true,
  hijack_cursor = true,
  git = { enable = true, ignore = true, },
  update_focused_file = { enable = true, update_cwd = true, },
  view = { hide_root_folder = true, mappings = { custom_only = true, list = mappings } },
}
