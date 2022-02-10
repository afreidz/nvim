local _npairs, npairs = pcall(require, "nvim-autopairs")
local _autotag, autotag = pcall(require, "nvim-ts-autotag")
if not _npairs then
	return
end

npairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string", "source" },
		javascript = { "string", "template_string" },
	},
	disable_filetype = { "TelescopePrompt" },
	fast_wrap = {
		map = "<M-e>",
		chars = { "{", "[", "(", '"', "'", "<" },
		pattern = string.gsub([[ [%'%"%)%>%]%)%}%,%>] ]], "%s+", ""),
		offset = 0,
		end_key = "$",
		keys = "qwertyuiopzxcvbnmasdfghjkl",
		check_comma = true,
		highlight = "PmenuSel",
		highlight_grey = "LineNr",
	},
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local _cmp, cmp = pcall(require, "cmp")

if _cmp then
  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
end

if _autotag then
  autotag.setup()
end
