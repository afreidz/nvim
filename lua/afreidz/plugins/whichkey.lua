local present, which_key = pcall(require, "which-key")
if not present then
	return
end

local setup = {
	plugins = {
		marks = true,
		registers = true,
		spelling = {
			enabled = true,
			suggestions = 20,
		},
		presets = {
			operators = true,
			motions = true,
			text_objects = true,
			windows = true,
			nav = true,
			z = true,
			g = true,
		},
	},
	icons = {
		breadcrumb = "»",
		separator = "➜",
		group = "+",
	},
	popup_mappings = {
		scroll_down = "<c-d>",
		scroll_up = "<c-u>",
	},
	window = {
		border = "rounded",
		position = "bottom",
		margin = { 1, 0, 1, 0 },
		padding = { 2, 2, 2, 2 },
		winblend = 0,
	},
	layout = {
		height = { min = 4, max = 25 },
		width = { min = 20, max = 50 },
		spacing = 3,
		align = "left",
	},
	ignore_missing = true,
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
	show_help = true,
	triggers = "auto",
	triggers_blacklist = {
		i = { "j", "k" },
		v = { "j", "k" },
	},
}

local leader_opts = {
	mode = "n",
	prefix = "<leader>",
	buffer = nil,
	silent = true,
	noremap = true,
	nowait = true,
}

local leader_mappings = {
	w = {
		"<esc>:w!<bar>:lua vim.notify(vim.fn.expand('%'), 'success', { title = 'Buffer Saved', timeout = 3000 })<cr>",
		"Save Buffer",
	},
	q = { "<cmd>conf qa<cr>", "Quit" },
	c = { "<cmd>Bdelete!<cr>", "Close Buffer" },
	h = { "<cmd>nohlsearch<cr>", "Clear Highlight" },
	s = { "<cmd>SessionManager save_current_session<cr>", "Save Session" },
	z = { "<cmd>ZenMode<cr>", "Zen Mode" },
	e = { "<cmd>NvimTreeToggle<cr>", "File Explorer" },
	f = {
		name = "Find",
		b = { "<cmd>Telescope buffers<cr>", "Buffers" },
		f = { "<cmd>Telescope find_files<cr>", "Files" },
		s = { "<cmd>SessionManager load_session<cr>", "Sessions" },
		t = { "<cmd>Telescope live_grep<cr>", "Text" },
	},
	F = { "<cmd>lua vim.lsp.buf.formatting_sync()<cr>" },
	p = {
		name = "Packer",
		c = { "<cmd>PackerCompile<cr>", "Compile" },
		i = { "<cmd>PackerInstall<cr>", "Install" },
		s = { "<cmd>PackerSync<cr>", "Sync" },
		S = { "<cmd>PackerStatus<cr>", "Status" },
		u = { "<cmd>PackerUpdate<cr>", "Update" },
	},
	g = {
		name = "Git",
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
	},
	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		d = { "<cmd>Telescope diagnostics bufnr=0<cr>", "Document Diagnostics" },
		w = { "<cmd>Telescope diagnostics<cr>", "Workspace Diagnostics" },
		f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
		j = { "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "Next Diagnostic" },
		k = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
		l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
		Q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
		s = { "<cmd>SymbolsOutline<cr>", "Document Symbols" },
		S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },
	},
	S = {
		name = "Misc. Search",
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
		h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
		M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		R = { "<cmd>Telescope registers<cr>", "Registers" },
		k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
		C = { "<cmd>Telescope commands<cr>", "Commands" },
	},

	t = {
		name = "Terminal",
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
		v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
	},
}

local motion_mappings = {
	[">"] = { "<cmd>><cr>", "Indent line" },
	["<"] = { "<cmd><<cr>", "Unindent line" },
	["<c-Right>"] = { "<C-w>l", "Move to next buffer" },
	["<c-Left>"] = { "<C-w>h", "Move to previous buffer" },
	["<c-Up>"] = { ":m .-2<cr>==", "Move line up" },
	["<c-Down>"] = { ":m .+1<cr>==", "Move line down" },
	["<a-tab>"] = { "<cmd>BufferLineCycleNext<cr>", "Move to the next tab" },
	["<a-Left>"] = { "<cmd>vertical resize -2<cr>", "Resize vertical split" },
	["<a-Right>"] = { "<cmd>vertical resize +2<cr>", "Resize vertical split" },
	["<a-s-tab>"] = { "<cmd>BufferLineCyclePrev<cr>", "Move to the previous tab" },
}

local motion_opts = {
	mode = "n",
	buffer = nil,
	silent = true,
	noremap = true,
	nowait = true,
}

which_key.setup(setup)
which_key.register(leader_mappings, leader_opts)
which_key.register(motion_mappings, motion_opts)
