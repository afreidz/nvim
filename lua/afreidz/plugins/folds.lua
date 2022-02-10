local _fold, fold = pcall(require, "pretty-fold")
if not _fold then
	return
end

local preview = require("pretty-fold.preview")

fold.setup({
	keep_indentation = false,
	fill_char = "━",
	sections = {
		left = {
			"━ ",
			function()
				return string.rep("*", vim.v.foldlevel)
			end,
			" ━┫",
			"content",
			"┣",
		},
		right = { "┫ ", "number_of_folded_lines", " ┣━━" },
	},
})

preview.setup_keybinding("h")
