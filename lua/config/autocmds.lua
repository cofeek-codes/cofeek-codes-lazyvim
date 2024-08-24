-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Setting keymaps for compilation-mode
local map = vim.api.nvim_buf_set_keymap
local opts = { noremap = true }

vim.api.nvim_create_autocmd("FileType", {
  pattern = "compilation",
  callback = function()
    map(0, "n", "r", "<cmd>Recompile<CR>", opts)
    map(0, "n", "e", "<cmd>NextError<CR>", opts)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.keymap.set("n", "<C-Space>", function()
      require("obsidian").util.toggle_checkbox()
    end, {
      silent = true,
      buffer = true,
    })
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.pu,*.uml,*.plantuml,*.puml,*.iuml",
  callback = function()
    local file_path = vim.fn.expand("%")
    vim.fn.system(string.format("java -jar ~/.local/bin/plantuml.jar -tpng %s", file_path))
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.keymap.set("n", "<leader>mm", function()
      print("get images should print images")
      for i, image in ipairs(require("image").get_images()) do
        local current_buffer_number = vim.api.nvim_get_current_buf()
        local markdown_link = string.format("![d%d](%s)", i, image.path)
        vim.api.nvim_buf_set_lines(
          current_buffer_number,
          image.geometry.y - 1,
          image.geometry.y,
          false,
          { markdown_link }
        )
      end
    end, { silent = true, buffer = true })
  end,
})
