
local present, installer = pcall(require, "nvim-lsp-installer")
if not present then	return end

installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("afreidz.plugins.lsp.handlers").on_attach,
		capabilities = require("afreidz.plugins.lsp.handlers").capabilities,
	}

	server:setup(opts)
end)
