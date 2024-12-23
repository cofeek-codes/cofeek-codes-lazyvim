-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.user_emmet_leader_key = ","

vim.g.lazyvim_php_lsp = "intelephense"

vim.opt.guicursor = ""

vim.opt.statuscolumn = ""

vim.opt.list = false

vim.g.solarized_termtrans = 1

vim.opt.spelllang = "en,ru"

vim.g.snacks_animate = false

vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})
