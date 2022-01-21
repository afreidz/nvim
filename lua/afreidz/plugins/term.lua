local present, term = pcall(require, 'toggleterm')
if not present then return end

term.setup {
  shade_terminals = false,
  float_opts = {
    winblend = 0,
    highlights = {
      border = 'FloatBorder',
      background = 'NormalFloat',
    }
  }
}
