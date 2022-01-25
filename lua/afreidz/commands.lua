local cmd = vim.cmd
cmd ('colorscheme afcolors')
cmd('au SessionLoadPost * NvimTreeOpen')

local colors = require('afcolors.api.colors').get_colors()

cmd('hi NotifyInfo guifg='..colors.sky..' gui=italic')
cmd('hi NotifyError guifg='..colors.red..' gui=italic')
cmd('hi NotifySuccess guifg='..colors.green..' gui=italic')
