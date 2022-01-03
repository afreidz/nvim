local present, null = pcall(require, "null-ls")
if not present then	return end

local formatting = null.builtins.formatting
local diagnostics = null.builtins.diagnostics

null.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
	},
})
