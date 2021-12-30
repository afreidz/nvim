local map = vim.api.nvim_set_keymap

map('n', '<Leader><Space>', ':NvimTreeOpen<CR>:NvimTreeFocus<CR>', { silent = true, noremap = true })
map('n', '<Leader>w', ':bd<CR>', { silent = true, noremap = true })
map('n', '<Leader>q', ':q!<CR>', { silent = true, noremap = true })
map('n', '<Leader>ff', ':Telescope find_files<CR>', { silent = true, noremap = true })
map('n', '<Leader>fb', ':Telescope buffers<CR>', { silent = true, noremap = true })

map('c', 'td', ':TroubleToggle<CR>', { silent = true, noremap = true })