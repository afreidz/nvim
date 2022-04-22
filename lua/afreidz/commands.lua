local cmd = vim.cmd
cmd("au SessionLoadPost * NvimTreeOpen")

cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=3000})
  augroup END
]]

cmd [[
  autocmd BufRead,BufEnter *.svx set filetype=svx
  autocmd BufRead,BufEnter *.mdx set filetype=markdown
  autocmd BufRead,BufEnter *.astro set filetype=astro
]]
