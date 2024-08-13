-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Setting keymaps for compilation-mode
local map = vim.api.nvim_buf_set_keymap
local opts = { noremap = true }

vim.api.nvim_create_autocmd("FileType", {
  pattern = "compilation",
  callback = function()
    map(0, "n", "r", ":Recompile<Return>", opts)
    map(0, "n", "e", ":NextError<Return>", opts)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "org",
  callback = function()
    vim.keymap.set("n", "<C-Space>", '<cmd>lua require("orgmode").action("org_mappings.toggle_checkbox")<CR>', {
      silent = true,
      buffer = true,
    })
  end,
})
