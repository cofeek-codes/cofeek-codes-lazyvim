-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--- duplicate line
map("n", "_", "yyp", opts)

--- delete word backwards
map("n", "<C-w>", "vbd", opts)

--- exit window
map("n", "qq", ":q<Return>", opts)

--- Undo
map({ "n", "i" }, "<C-z>", "u", opts)

--- Copy to clipboard
map("v", "<M-w>", "y", opts)

--- Cut to clipboard
map("v", "<C-w>", "d", opts)

--- Paste from clipboard
map("n", "<C-y>", "p", opts)

--- Select whole line
map("n", "<C-L>", "V", opts)

--- Delete to end of line
map("n", "d'", "d$", opts)

--- Movement
map({ "n", "v" }, "<C-right>", "el", opts)
map({ "n", "v" }, "<C-left>", "bh", opts)
map({ "n", "v" }, "<C-up>", "{", opts)
map({ "n", "v" }, "<C-down>", "}", opts)
map({ "n", "v" }, "<C-e>", "$", opts)
map({ "n", "v" }, "<C-q>", "0", opts)

--- Delete to end of line
map("n", "d'", "d$", opts)

--- Tabs
map("n", "te", ":tabedit<Return>")
map("n", "<tab>", ":tabnext<Return>")
map("n", "<S-tab>", ":tabprev<Return>")
map("n", "td", ":tabclose<Return>")
