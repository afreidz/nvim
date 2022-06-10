local _configs, configs = pcall(require, "nvim-treesitter.configs")
local _tspc, tspc = pcall(require, "nvim-treesitter.parsers")
if not _configs then
  return
end

configs.setup(
  {
    ensure_installed = "all",
    ignore_install = {"phpdoc"},
    sync_install = false,
    autotag = {enable = true},
    autopairs = {enable = true},
    highlight = {
      enable = true,
    },
    indent = {enable = true, disable = {"yaml"}},
    context_commentstring = {
      enable = true,
      enable_autocmd = false
    }
  }
)

tspc.filetype_to_parsername.svx = "svelte"
tspc.filetype_to_parsername.astro = "tsx"
