local cmd = vim.cmd

cmd [[
  try
    colorscheme catppuccin
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry

  hi Comment gui=italic
  hi Keyword gui=italic
  hi Function gui=italic
  hi Variable gui=italic

  hi DiagnosticUnderlineWarn gui=undercurl
  hi DiagnosticUnderlineInfo gui=undercurl
  hi DiagnosticUnderlineHint gui=undercurl
  hi DiagnosticUnderlineError gui=undercurl
]]


