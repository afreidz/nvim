local cp = require("afreidz.theme.colors")
local theme = {}

theme.normal = {
	a = { bg = cp.black1, fg = cp.blue, gui = "italic" },
	b = { bg = cp.black1, fg = cp.black4 },
	c = { bg = cp.black1, fg = cp.black4 },
	x = { bg = cp.black1, fg = cp.black4 },
	y = { bg = cp.black1, fg = cp.flamingo },
	z = { bg = cp.black1, fg = cp.black4 },
}

theme.insert = {
	a = { bg = cp.black1, fg = cp.teal, gui = "italic" },
	b = { bg = cp.black1, fg = cp.black4 },
	c = { bg = cp.black1, fg = cp.black4 },
	x = { bg = cp.black1, fg = cp.black4 },
	y = { bg = cp.black1, fg = cp.flamingo },
	z = { bg = cp.black1, fg = cp.black4 },
}

theme.command = {
	a = { bg = cp.black1, fg = cp.peach, gui = "italic" },
	b = { bg = cp.black1, fg = cp.black4 },
	c = { bg = cp.black1, fg = cp.black4 },
	x = { bg = cp.black1, fg = cp.black4 },
	y = { bg = cp.black1, fg = cp.flamingo },
	z = { bg = cp.black1, fg = cp.black4 },
}

theme.visual = {
	a = { bg = cp.black1, fg = cp.magenta, gui = "italic" },
	b = { bg = cp.black1, fg = cp.black4 },
	c = { bg = cp.black1, fg = cp.black4 },
	x = { bg = cp.black1, fg = cp.black4 },
	y = { bg = cp.black1, fg = cp.flamingo },
	z = { bg = cp.black1, fg = cp.black4 },
}

theme.replace = {
	a = { bg = cp.black1, fg = cp.red, gui = "italic" },
	b = { bg = cp.black1, fg = cp.black4 },
	c = { bg = cp.black1, fg = cp.black4 },
	x = { bg = cp.black1, fg = cp.black4 },
	y = { bg = cp.black1, fg = cp.flamingo },
	z = { bg = cp.black1, fg = cp.black4 },
}

theme.inactive = {
	a = { bg = cp.black1, fg = cp.black4, gui = "italic" },
	b = { bg = cp.black1, fg = cp.black4 },
	c = { bg = cp.black1, fg = cp.black4 },
	x = { bg = cp.black1, fg = cp.black4 },
	y = { bg = cp.black1, fg = cp.black4 },
	z = { bg = cp.black1, fg = cp.black4 },
}

return theme
