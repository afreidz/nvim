local plugin = {
  'startup-nvim/startup.nvim',
  requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
}

local present, startup = pcall(require, 'startup')
if not present then return plugin end

startup.setup({
  logo = {
    type = 'text',
    align = 'center',
    highlight = 'String',
    content = {
      ' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⠀⠀⠀⡀⡢⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢄⢮⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⠀⡠⡂⣊⠢⡑⡐⠄⠀⠀⠀⠀⠀⠀⢀⢔⡕⣕⢗⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⠢⠨⢢⠢⡃⡪⡐⡑⢄⠀⠀⠀⠀⢰⢱⡣⣫⢪⢮⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⡑⠅⢅⠣⡊⡢⡊⢌⠢⡂⡀⠀⠀⢐⢧⢳⢕⢧⢳⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⠪⡨⠢⠡⡑⠰⡘⡌⡪⡂⡆⠄⠀⢐⡕⣗⢕⡗⡵⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⠕⢌⠪⡨⢌⠀⠘⡰⡑⡌⡪⡊⣂⠀⡯⣪⡳⣹⡪⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⠕⡅⠕⢌⠢⠀⠀⠀⢕⢅⢇⢕⢒⢬⢺⢕⢽⢜⢮⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⢕⢘⠜⢌⠪⠀⠀⠀⠀⠪⡢⡣⡣⡣⡳⣹⢕⢯⡳⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⢕⢅⢣⢑⠕⠀⠀⠀⠀⠀⠘⢜⢌⢎⢞⢎⢯⡳⡝⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⢕⢌⠆⠁⠀⠀⠀⠀⠀⠀⠀⠈⢎⢎⣗⢽⠑⠉⠀⠀⠀⠀⠀⠀⠀',
      ' ⠀⠀⠀⠀⠀⠕⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠣⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '            neovim            '
    }
  },
  parts = { 'logo' }
})

return plugin