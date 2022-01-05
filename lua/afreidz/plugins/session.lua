local smgr_present, ssm = pcall(require, 'session_manager')
if not smgr_present then return end

ssm.setup({
  autoload_mode = "Disabled",
  autosave_last_session = true,
  autosave_ignore_not_normal = true,
  autosave_only_in_session = false,
})

local tele_present, telescope = pcall(require, 'telescope')
if not tele_present then return end

telescope.load_extension('sessions')
