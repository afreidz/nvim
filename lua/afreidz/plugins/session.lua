local present, session = pcall(require, 'auto-session')
if not present then return end

session.setup({
  auto_save_endable = false,
  auto_restore_enabled = true,
})

local lens_present, lens = pcall(require, 'session-lens')
if not lens_present then return end

lens.setup({
  prompt_title = 'Neovim Sessions',
  theme_conf = { border = true },
  previewer = true,
})
