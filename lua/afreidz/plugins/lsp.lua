local _lsp, lspconfig = pcall(require, "lspconfig")
local _lsp_util, lsp_util = pcall(require, "lspconfig/util")
local _locallsp, locallsp = pcall(require, "lspconfig/configs")

local _aerial, aerial = pcall(require, "aerial")
local _bulb, bulb = pcall(require, "nvim-lightbulb")

if not _lsp then
  return
end

if _aerial then
  aerial.setup(
    {
      min_width = 30,
      show_guides = true,
      default_direction = "right",
      backends = {"lsp", "treesitter"}
    }
  )
end

local signs = {
  {name = "DiagnosticSignError", text = ""},
  {name = "DiagnosticSignWarn", text = ""},
  {name = "DiagnosticSignHint", text = ""},
  {name = "DiagnosticSignInfo", text = ""}
}

local config = {
  virtual_text = false,
  signs = {
    active = signs
  },
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = ""
  }
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, {texthl = sign.name, text = sign.text, numhl = ""})
end

vim.diagnostic.config(config)

local on_attach = function(client, bufnr)
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec(
      [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
      false
    )
  end
    vim.cmd(
      [[
      autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false, scope = "cursor", header = "Diagnostics:" })
    ]]
    )

  if _bulb then
    vim.cmd([[ autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb() ]])
  end

  if _aerial then
    aerial.on_attach(client, bufnr)
  end
end

lspconfig.cssls.setup(
  {
    filetypes = {"scss"}
  }
)

lspconfig.svelte.setup(
  {
    filetypes = {"svelte", "svx", "astro"}
  }
)

lspconfig.html.setup(
  {
    filetypes = {"mdx", "svelte", "astro", "svx"}
  }
)

lspconfig.tsserver.setup(
  {
    filetypes = {"typescript", "typescriptreact", "typescript.tsx", "mdx", "svx", "svelte" },
    on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
      on_attach(client, bufnr)
    end
  }
)

lspconfig.eslint.setup(
  {
    on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
      on_attach(client, bufnr)
    end
  }
)
