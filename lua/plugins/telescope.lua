return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-file-browser.nvim" },
    },
    keys = {
      { "<leader>f;", "<cmd>Telescope file_browser<CR>", desc = "File Browser" },
      { "<leader>s;", "<cmd>Telescope spell_suggest<CR>", desc = "Spell Suggest" },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          file_browser = {
            theme = "dropdown",
            initial_mode = "normal",
            mappings = {
              ["n"] = {
                ["q"] = require("telescope.actions").close,
              },
            },
          },
        },
      })
      require("telescope").load_extension("file_browser")
    end,
  },
}
