local present, indent = pcall(require, 'indent_blankline')
if not present then return end

indent.setup {
  char = ' ',
  context_char = '│',
  show_current_context = true,
  buftype_exclude = { "terminal" }
}
