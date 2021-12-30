local plugin = {
  'karb94/neoscroll.nvim'
}

local present, neoscroll = pcall(require, 'neoscroll')
if not present then return plugin end

neoscroll.setup()

return plugin