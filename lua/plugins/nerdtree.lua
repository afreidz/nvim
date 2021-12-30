local g = vim.g
local plugin = {
  'preservim/nerdtree',
  requires = { 'ryanoasis/vim-devicons', 'tiagofumo/vim-nerdtree-syntax-highlight' }
}

g.NERDTreeStatusline = ' '
g.WebDevIconsNerdTreeBeforeGlyphPadding = ''
g.WebDevIconsUnicodeDecorateFolderNodes = true

g.NERDTreeMinimalUI = 1
g.NERDTreeDirArrowExpandable = ' '
g.NERDTreeDirArrowCollapsible = ' '

return plugin