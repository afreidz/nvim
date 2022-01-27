local present, icons = pcall(require, 'nvim-web-devicons')
if not present then return end

local colors = require('afreidz.theme.colors')
local current = icons.get_icons()
local new = {}

for key, icon in pairs(current) do
    icon.color = colors.gray0
    new[key] = icon
end

icons.set_icon(new)
