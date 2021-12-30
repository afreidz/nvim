local plugin = {
  'nvim-telescope/telescope.nvim',
  requires = { 
    { 'nvim-lua/plenary.nvim' }, 
    { 'nvim-telescope/telescope-packer.nvim' }, 
    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
  },
}

local present, telescope = pcall(require, 'telescope')
if not present then return plugin end

telescope.setup {
	extensions = {
    fzf = {
      fuzzy = true,
    },
		packer = {
			layout_config = {
				height = .5
			}
		}
	}
}

telescope.load_extension('fzf')

return plugin
