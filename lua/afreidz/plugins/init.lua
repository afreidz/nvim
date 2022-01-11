local fn = vim.fn

local dir = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(dir)) > 0 then
  bootstrap = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    dir,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local present, packer = pcall(require, 'packer')
if not present then return end

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

return packer.startup(function(use)
  use 'wbthomason/packer.nvim' 
  use 'nvim-lua/plenary.nvim' 
  use 'windwp/nvim-autopairs' 
  use 'moll/vim-bbye'
  use 'akinsho/toggleterm.nvim'
  use 'lewis6991/impatient.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'folke/which-key.nvim'

  -- Color schemes
  use 'lunarvim/darkplus.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }

  -- Tab/Status/Tree
  use 'akinsho/bufferline.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Completion
  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-buffer' 
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'simrat39/symbols-outline.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- Git
  use 'airblade/vim-gitgutter'

  -- Zen
  use {
    "folke/zen-mode.nvim",
    config = function() require("zen-mode").setup {} end
  }
  use {
    "folke/twilight.nvim",
    config = function() require("twilight").setup {} end
  }

  -- Folds
  use "anuvyklack/pretty-fold.nvim"

  -- Startup and Session
  use "goolord/alpha-nvim"
  use {
    "Shatur/neovim-session-manager",
    requires = { "nvim-telescope/telescope.nvim" },
  }

  -- Scrollbar
  use "petertriho/nvim-scrollbar"

  if bootstrap then
    require('packer').sync()
  end
end)
