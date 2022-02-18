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

local luafmt = function()
  return {
    stdin = true,
    exe = "luafmt",
    args = {"--indent-count", 2, "--stdin"}
  }
end

format.setup(
  {
    filetype = {
      lua = {luafmt},
      json = {prettier_common},
      javascript = {prettier_common},
      typescript = {prettier_common},
      javascriptreact = {prettier_common},
      typescriptreact = {prettier_common},
    }
  }
)
