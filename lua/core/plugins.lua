local fn = vim.fn
local config = require('core.config')
local dir = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(dir)) > 0 then
  bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', dir})
end
vim.cmd [[packadd packer.nvim]]

local treesitter = require('plugins.treesitter')
local theme = require('plugins/'..config.theme)
local gitgutter = require('plugins.gitgutter')
local tabs = require('plugins/'..config.tabs)
local tree = require('plugins/'..config.tree)
local trouble = require('plugins.trouble')
local startup = require('plugins.startup')
local tele = require('plugins.telescope')
local scroll = require('plugins.scroll')
local indent = require('plugins.indent')
local lsp = require('plugins.lsp')

return require('packer').startup({function(use)

  use 'wbthomason/packer.nvim'
  
  use(indent)
  use(theme)
  use(tabs)
  use(tree)
  use(treesitter)
  use(lsp)
  use(tele)
  use(trouble)
  -- use(startup)
  use(scroll)
  use(gitgutter)

  if bootstrap then
    require('packer').sync()
  end
end})
