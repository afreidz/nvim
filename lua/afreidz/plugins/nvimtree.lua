local icons = {
  git = {
    staged = "✓",
    renamed = "➜",
    deleted = "",
    ignored = "◌",
    unstaged = "",
    unmerged = "",
    untracked = "★"
  },
  folder = {
    open = "",
    empty = "",
    default = "",
    symlink = "",
    empty_open = "",
    symlink_open = ""
  }
}

local g = vim.g

local _tree, tree = pcall(require, "nvim-tree")
if not _tree then
  return
end

local cb = require("nvim-tree.config").nvim_tree_callback
local mappings = {
  {key = "q", cb = cb("close")},
  {key = "d", cb = cb("remove")},
  {key = "R", cb = cb("rename")},
  {key = "c", cb = cb("create")},
  {key = "r", cb = cb("refresh")},
  {key = ".", cb = cb("dir_up")},
  {key = "y", cb = cb("copy_path")},
  {key = "yn", cb = cb("copy_name")},
  {key = "<bs>", cb = cb("close_node")},
  {key = "h", cb = cb("toggle_ignored")},
  {key = "h", cb = cb("toggle_dotfiles")},
  {key = {"<RightMouse>"}, cb = cb("cd")},
  {key = "yy", cb = cb("copy_absolute_path")},
  {key = {"<cr>", "<2-LeftMouse>"}, cb = cb("edit")}
}

tree.setup(
  {
    update_cwd = true,
    disable_netrw = true,
    hijack_cursor = true,
    diagnostics = {enable = true},
    git = {enable = true, ignore = false},
    hijack_directories = {enable = true, auto_open = true},
    update_focused_file = {enable = false, update_cwd = false},
    actions = {open_file = {window_picker = {enable = false}}},
    view = {hide_root_folder = false, mappings = {custom_only = true, list = mappings}},
    renderer = {
      icons = {glyphs = icons},
      highlight_opened_files = "name",
      indent_markers = {enable = true}
    }
  }
)
