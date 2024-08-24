-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Setting keymaps for compilation-mode

vim.api.nvim_create_autocmd("FileType", {
  pattern = "compilation",
  callback = function()
    local map = vim.api.nvim_buf_set_keymap
    local opts = { noremap = true }
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

vim.api.nvim_create_autocmd("BufRead", {
  pattern = "Cargo.toml",
  callback = function()
    local crates = require("crates")

    vim.keymap.set("n", "<leader>ct", crates.toggle, { silent = true, desc = "Crates Toggle" })
    vim.keymap.set("n", "<leader>cr", crates.reload, { silent = true, desc = "Crates Reload" })

    vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, { silent = true, desc = "Crates Show Versions" })
    vim.keymap.set("n", "<leader>cf", crates.show_features_popup, { silent = true, desc = "Crates Show Features" })
    -- stylua: ignore
    vim.keymap.set("n", "<leader>cd", crates.show_dependencies_popup, { silent = true, desc = "Crates Show Dependencies" })

    vim.keymap.set("n", "<leader>cu", crates.update_crate, { silent = true, desc = "Crates Update Crate" })
    vim.keymap.set("v", "<leader>cu", crates.update_crates, { silent = true, desc = "Crates Update Many" })
    vim.keymap.set("n", "<leader>ca", crates.update_all_crates, { silent = true, desc = "Crate Update All" })
    vim.keymap.set("n", "<leader>cU", crates.upgrade_crate, { silent = true, desc = "Crates Upgrade Crate" })
    vim.keymap.set("v", "<leader>cU", crates.upgrade_crates, { silent = true, desc = "Crates Upgrade Many" })
    vim.keymap.set("n", "<leader>cA", crates.upgrade_all_crates, { silent = true, desc = "Crates Upgrade All" })
-- stylua: ignore
    vim.keymap.set("n", "<leader>cx", crates.expand_plain_crate_to_inline_table, { silent = true, desc = "Crates Crate to Inline Table" })
    -- stylua: ignore
    vim.keymap.set("n", "<leader>cX", crates.extract_crate_into_table, { silent = true, desc = "Crates Crate to Table" })

    vim.keymap.set("n", "<leader>cH", crates.open_homepage, { silent = true, desc = "Crates Open Homepage" })
    vim.keymap.set("n", "<leader>cR", crates.open_repository, { silent = true, desc = "Crates Open Repository" })
    vim.keymap.set("n", "<leader>cD", crates.open_documentation, { silent = true, desc = "Crates Open Docs" })
    vim.keymap.set("n", "<leader>cC", crates.open_crates_io, { silent = true, desc = "Crates Open crates.io" })
    vim.keymap.set("n", "<leader>cL", crates.open_lib_rs, { silent = true, desc = "Crates Open lib.rs" })
  end,
})
