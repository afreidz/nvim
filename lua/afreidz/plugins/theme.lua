local present, theme = pcall(require, 'afcolors')
if not present then return end

theme.setup({
  integrations = {
    cmp = true,
		lsp = true,
    notify = true,
		markdown = true,
		nvimtree = true,
		which_key = true,
		telescope = true,
		gitgutter = true,
		treesitter = true,
		bufferline = true,
		indent_blankline = true,
  }
})
