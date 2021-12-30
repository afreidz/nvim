local g = vim.g
local opt = vim.opt

g.mapleader = ' '
g.border_style = 'rounded'

opt.mouse = 'a'
opt.list = true
opt.tabstop = 2
opt.wrap = true
opt.title = true
opt.cmdheight = 1
opt.hidden = true
opt.number = true
opt.scrolloff = 4
opt.foldexpr = '' -- set to ''nvim_treesitter#foldexpr()'' for treesitter based folding
opt.spell = false
opt.backup = false
opt.shiftwidth = 2
opt.laststatus = 2
opt.pumheight = 10 -- pop up menu height
opt.hlsearch = true
opt.undofile = true
opt.numberwidth = 3
opt.spelllang = 'en'
opt.showmode = false
opt.conceallevel = 0
opt.expandtab = true
opt.smartcase = true
opt.swapfile = false
opt.timeoutlen = 800
opt.updatetime = 300
opt.splitbelow = true -- force all horizontal splits to go below current window
opt.ignorecase = true
opt.sidescrolloff = 4
opt.cursorline = true -- highlight the current line
opt.splitright = true -- force all vertical splits to go to the right of current window
opt.signcolumn = 'yes' -- always show the sign column otherwise it would shift the text each time
opt.smartindent = true
opt.termguicolors = true
opt.colorcolumn = '99999'
opt.foldmethod = 'manual' -- folding set to ''expr'' for treesitter based folding
opt.fileencoding = 'utf-8'
opt.relativenumber = false
opt.whichwrap:append '<>[]hl'
opt.fillchars = { eob = ' ' }
opt.clipboard = 'unnamedplus'
opt.titlestring = '%<%F - nvim'
opt.listchars = 'tab:│ ,trail:·,nbsp:+'
opt.completeopt = { 'menuone', 'noselect' }
opt.undodir = vim.fn.stdpath('cache') .. '/undo'