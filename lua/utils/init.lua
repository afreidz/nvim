local funcs = {}

funcs.hide_statusline = function()
   local api = vim.api
   local buftype = api.nvim_buf_get_option('%', 'ft')

   if buftype then
      api.nvim_set_option('laststatus', 0)
      return
   end

   api.nvim_set_option('laststatus', 2)
end

return funcs