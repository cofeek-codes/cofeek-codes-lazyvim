-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true }

-- Duplicate line
map("n", "_", "yyp", opts)

-- Undo
map({ "n", "i" }, "<C-z>", "u", opts)

-- Copy to clipboard
map("v", "<M-w>", "y", opts)

-- Cut to clipboard
map("v", "<C-w>", "d", opts)

-- Paste from clipboard
map("n", "<C-y>", "P", opts)

-- Delete to start of line
map("n", "da", "d0", opts)

-- Delete to end of line
map("n", "d'", "d$", opts)

-- Movement
map({ "n", "v" }, "<C-right>", "el", opts)
map({ "n", "v" }, "<C-left>", "bh", opts)
map({ "n", "v" }, "<C-up>", "{", opts)
map({ "n", "v" }, "<C-down>", "}", opts)
map({ "n", "v" }, "'", "$", opts)
map({ "n", "v" }, "a", "0", opts)

-- Delete to end of line
map("n", "d'", "d$", opts)

-- Tabs
map("n", "te", ":tabedit<Return>", opts)
map("n", "td", ":tabclose<Return>", opts)
map("n", "to", function()
  require("config.functions").close_other_buffers()
end, opts)

-- Enter as new line
map("n", "<Return>", "o", opts)

-- Shift+Enter as new line above
map("n", "<A-Return>", "O", opts)

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Move Lines
map("n", "<A-down>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<A-up>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "<A-down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-down>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-up>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Windows (Panes)
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)
map("n", "<S-Left>", "<C-w>h", opts)
map("n", "<S-Right>", "<C-w>l", opts)
map("n", "<S-Up>", "<C-w>k", opts)
map("n", "<S-Down>", "<C-w>j", opts)
map("n", "so", "<C-w>o", opts)

--Resize windows
map("n", "<C-S-Left>", "<C-w><", opts)
map("n", "<C-S-Right>", "<C-w>>", opts)
map("n", "<C-S-Up>", "<C-w>+", opts)
map("n", "<C-S-Down>", "<C-w>-", opts)

-- Compilation mode
map("n", "<C-l>", "<cmd>Compile<CR>", opts)

-- Quickly go to insert-mode
map("n", "<C-c>", "i", opts)
map("i", "<C-c>", "<Esc>", opts)
