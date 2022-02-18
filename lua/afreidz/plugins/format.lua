local _format, format = pcall(require, "formatter")

if not _format then
  return
end

local prettier_common = function()
  return {
    stdin = true,
    exe = "prettierd",
    args = {vim.api.nvim_buf_get_name(0)}
  }
end

format.setup(
  {
    filetype = {
<<<<<<< HEAD
=======
      json = {prettier_common},
>>>>>>> 18a2baf (ditch null_ls in favor of formatter.nvim)
      javascript = {prettier_common},
      typescript = {prettier_common},
      javascriptreact = {prettier_common},
      typescriptreact = {prettier_common},
      lua = {
        function()
          return {
            stdin = true,
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"}
          }
        end
      },
<<<<<<< HEAD
      json = {
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote"},
            stdin = true
          }
        end
      }
=======
>>>>>>> 18a2baf (ditch null_ls in favor of formatter.nvim)
    }
  }
)
