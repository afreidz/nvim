local _configs, configs = pcall(require, "nvim-treesitter.configs")
if not _configs then
	return
end

configs.setup({
	ensure_installed = "maintained",
	sync_install = false,
  autotag = { enable = true },
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
