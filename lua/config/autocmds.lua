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
    vim.keymap.set("n", "<leader>m", function()
      print("get images should print images")
      for i, image in ipairs(require("image").get_images()) do
        print(image.path)
        local current_buffer_number = vim.api.nvim_get_current_buf()
        local total_lines = vim.api.nvim_buf_line_count(current_buffer_number)
        local markdown_link = string.format("![d%d](%s)", i, image.path)
        vim.api.nvim_buf_set_lines(current_buffer_number, total_lines, total_lines + 1, false, { markdown_link })
      end
      print("images printed")
    end, { silent = true, buffer = true })
  end,
})
