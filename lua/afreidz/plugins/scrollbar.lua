local _scrollbar, scrollbar = pcall(require, "scrollbar")
if not _scrollbar then
	return
end

local handle = { text = " ", color = "white" }
local marks = {
	Error = { color = "red" },
	Info = { color = "blue" },
	Hint = { color = "green" },
	Warn = { color = "yellow" },
	Misc = { color = "purple" },
	Search = { color = "orange" },
}

local theme = require("afreidz.theme.colors")
local colors = theme
handle.color = colors.black4
marks.Hint.color = colors.sky
marks.Info.color = colors.teal
marks.Error.color = colors.red
marks.Warn.color = colors.yellow
marks.Search.color = colors.mauve
marks.Misc.color = colors.flamingo

scrollbar.setup({
	marks = marks,
	handle = handle,
	excluded_filetypes = { "nvimtree", "NvimTree" },
})
