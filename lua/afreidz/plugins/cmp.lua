local _cmp, cmp = pcall(require, "cmp")
local _kind, kind = pcall(require, "lspkind")
local _luasnip, luasnip = pcall(require, "luasnip")
local config = {}

if not _cmp then
	return
end

local check_backspace = function()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

if _luasnip then
  require("luasnip.loaders.from_vscode").lazy_load()
  config.snippet = {
    expand = function(args) luasnip.lsp_expand(args.body) end
  }
end

config.mapping = {
  ["<CR>"] = cmp.mapping.confirm({ select = true }),
  ["<Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    elseif _luasnip and luasnip.expandable() then
      luasnip.expand()
    elseif _luasnip and luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
    elseif check_backspace() then
      fallback()
    else
      fallback()
    end
  end, { "i", "s" }),
  ["<S-Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    elseif _luasnip and luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
  end, { "i", "s" }),
}

if _kind then
  config.formatting = {
    fields = { "kind", "abbr", "menu" },
    format = kind.cmp_format(),
  }
else
  config.formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  }
end

config.sources = {
  { name = "nvim_lsp_signature_help"},
  { name = "nvim_lsp" },
  { name = "buffer" },
  { name = "path" },
}

config.confirm_opts = {
  behavior = cmp.ConfirmBehavior.Replace,
  select = false,
}

config.experimental = {
  ghost_text = false,
  native_menu = false,
}

cmp.setup(config)
