local _ssm, ssm = pcall(require, "session_manager")
if not _ssm then
	return
end

ssm.setup({
	autoload_mode = "Disabled",
	autosave_last_session = true,
	autosave_ignore_not_normal = true,
	autosave_only_in_session = false,
})
