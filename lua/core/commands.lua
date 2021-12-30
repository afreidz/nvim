local cmd = vim.cmd
local ncmd = vim.api.nvim_command
local config = require('core.config')

local theme = pcall(require, config.theme)
print(theme)
if theme then
  cmd('colorscheme '..config.theme)
end

cmd [[syntax enable]]
cmd [[set termguicolors]]
cmd [[hi DiagnosticUnderlineError gui=undercurl]]
cmd [[hi DiagnosticUnderlineWarn  gui=undercurl]]
cmd [[hi DiagnosticUnderlineInfo  gui=undercurl]]
cmd [[hi DiagnosticUnderlineHint  gui=undercurl]]
cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]
cmd [[ autocmd BufEnter,BufWinEnter,Filetype,WinEnter * lua require('utils').hide_statusline() ]]
cmd [[ autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })]]

if config.tree == 'nerdtree' then
  ncmd [[autocmd VimEnter * NERDTree]]
  ncmd [[autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif]]
  ncmd [[
    autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    let buf=bufnr() | buffer# | execute 'normal! \<C-W>w' | execute 'buffer'.buf | endif
  ]]
  ncmd [[
    augroup nerdtreehidecwd
      autocmd!
      autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
    augroup end
  ]]
end