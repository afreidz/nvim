local Text = require("nui.text")
local Popup = require("nui.popup")
local M = {}

local note = Popup({
  enter = false,
  focusable = false,
  border = { style = "none", padding = { 1, 1 } },
  size = { width = 30, height = 2 },
  position = { row = 1,  col = "100%" },
  buf_options = {
    modifiable = true,
    readonly = false,
  },
})

M.info = function(title, content, dismiss) notify(title, content, dismiss, 'NotifyInfo') end
M.error = function(title, content, dismiss) notify(title, content, dismiss, 'NotifyError') end
M.success = function(title, content, dismiss) notify(title, content, dismiss, 'NotifySuccess') end

function notify(title, content, dismiss, type)
  if (string.len(title) > 30) then
    heading = '...'..string.sub(title, -27)
  else
    heading = title
  end

  if (string.len(content) > 30) then
    body = '...'..string.sub(content, -27)
  else
    body = content
  end

  note:mount()
  vim.defer_fn(function() note:unmount() end, dismiss or 2000)
  vim.api.nvim_buf_set_lines(note.bufnr, 0, 2, false, { heading, body })
  vim.api.nvim_buf_add_highlight(note.bufnr, -1, type, 0, 0, 30)
  vim.api.nvim_buf_add_highlight(note.bufnr, -1, 'NotifyBody', 1, 0, 30)
end

vim.notify = M
