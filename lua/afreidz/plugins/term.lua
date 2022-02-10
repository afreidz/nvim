local _term, term = pcall(require, "toggleterm")
if not _term then
	return
end

term.setup({
	shade_terminals = false,
	float_opts = {
		winblend = 0,
		highlights = {
			border = "FloatBorder",
			background = "NormalFloat",
		},
	},
})
