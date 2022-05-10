local _term, term = pcall(require, "toggleterm")
if not _term then
	return
end

term.setup({
	shade_terminals = false,
  highlights = {
    border = "FloatBorder",
    background = "NormalFloat",
  },
	float_opts = {
    border = "solid",
		winblend = 0,
	},
})
