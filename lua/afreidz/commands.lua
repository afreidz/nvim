local cmd = vim.cmd

cmd [[
  try
    autocmd VimEnter * NvimTreeOpen
  catch 

  endtry
]]

