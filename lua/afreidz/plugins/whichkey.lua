local _which, which_key = pcall(require, "which-key")
if not _which then
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
  [','] = { ":call emmet#expandAbbr(3, '')<cr>", "Emmet Expand" },
	w = {
		"<esc>:w!<cr>",
		"Save Buffer",
	},
	W = {
		"<esc>:SudaWrite<cr>",
		"Sudo Save Buffer",
	},
	x = { "<cmd>:q<cr>", "Quit Buffer" },
	z = { "<cmd>ZenMode<cr>", "Zen Mode" },
	q = { "<cmd>conf qa<cr>", "Quit Nvim" },
	c = { "<cmd>Bdelete!<cr>", "Close Buffer" },
	h = { "<cmd>nohlsearch<cr>", "Clear Highlight" },
	e = { "<cmd>NvimTreeToggle<cr>", "File Explorer" },
	s = { "<cmd>SessionManager save_current_session<cr>", "Save Session" },
	f = {
		name = "Find",
    y = { "<cmd>Telescope neoclip<cr>", "Yanks" },
		h = { "<cmd>Telescope help_tags<cr>", "Help" },
		k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
		t = { "<cmd>Telescope live_grep<cr>", "Text" },
		b = { "<cmd>Telescope buffers<cr>", "Buffers" },
		f = { "<cmd>Telescope find_files<cr>", "Files" },
		o = { "<cmd>Telescope oldfiles<cr>", "Recents" },
		c = { "<cmd>Telescope commands<cr>", "Commands" },
		m = { "<cmd>Telescope man_pages<cr>", "Manuals" },
		r = { "<cmd>Telescope registers<cr>", "Registers" },
		s = { "<cmd>SessionManager load_session<cr>", "Sessions" },
	},
	p = {
		name = "Packer",
		s = { "<cmd>PackerSync<cr>", "Sync" },
		S = { "<cmd>PackerStatus<cr>", "Status" },
		u = { "<cmd>PackerUpdate<cr>", "Update" },
		c = { "<cmd>PackerCompile<cr>", "Compile" },
		i = { "<cmd>PackerInstall<cr>", "Install" },
	},
	g = {
		name = "Git",
		s = { "<cmd>Telescope git_status<cr>", "File Git Status" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
	},
	l = {
		name = "LSP",
		I = { "<cmd>LspInfo<cr>", "Info" },
    f = { "<cmd>Format<cr>", "Format" },
		i = { "<cmd>LspInstall<cr>", "Install" },
		s = { "<cmd>AerialToggle<cr>", "Symbols" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" }, 
		w = { "<cmd>Telescope diagnostics<cr>", "Workspace Diagnostics" },
		d = { "<cmd>Telescope diagnostics bufnr=0<cr>", "Document Diagnostics" },
	},
	t = {
		name = "Terminal",
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
	},
}

local motion_mappings = {
	[">"] = { "<cmd>><cr>", "Indent line" },
	["<"] = { "<cmd><<cr>", "Unindent line" },
	["<c-Up>"] = { ":m .-2<cr>==", "Move line up" },
	["<c-Right>"] = { "<C-w>l", "Move to next buffer" },
	["<c-Down>"] = { ":m .+1<cr>==", "Move line down" },
	["<c-Left>"] = { "<C-w>h", "Move to previous buffer" },
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
