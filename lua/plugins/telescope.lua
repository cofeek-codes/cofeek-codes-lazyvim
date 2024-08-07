return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-file-browser.nvim" },
    },
    keys = {
      { "<leader>f;", ":Telescope file_browser<Return>", desc = "File Browser" },
    },
    config = function()
      local fb_actions = require("telescope").extensions.file_browser.actions
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
