local present, configs = pcall(require, "nvim-treesitter.configs")
if not present then
	return
end

configs.setup({
	ensure_installed = "maintained",
	sync_install = false,
	autopairs = { enable = true },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})
