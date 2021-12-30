local g = vim.g
local cmd = vim.cmd
local plugin = {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons',
  },
}

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

-- Setup if present
local present, nvimtree = pcall(require, 'nvim-tree')
if not present then return plugin end

nvimtree.setup {
  filters = {
    dotfiles = false,
  },
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = { 'dashboard' },
  auto_close = true,
  open_on_tab = true,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
  view = {
    hide_root_folder = true
  },
  git = {
    ignore = false,
  },
}

return plugin