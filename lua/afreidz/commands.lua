local cmd = vim.cmd

cmd [[
  try
    autocmd VimEnter * NvimTreeOpen
  catch 

  endtry
]]

cmd [[
  hi NvimTreeStatusLineNC guibg=#252530
]]
