local _notify, notify = pcall(require, "notify")
if not _notify then
	return
end

notify.setup({
	minimum_width = 40,
	stages = "fade_in_slide_out",
	background_colour = "NormalFloat",
})

vim.notify = notify
