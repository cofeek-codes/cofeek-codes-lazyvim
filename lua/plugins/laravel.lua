return {
  "adalessa/laravel.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
  },
  cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
  keys = {
    { "<leader>la", "<cmd>Laravel artisan<cr>" },
    { "<leader>lr", "<cmd>Laravel routes<cr>" },
    { "<leader>lm", "<cmd>Laravel related<cr>" },
  },
  event = { "VeryLazy" },
  opts = {
    features = {
      null_ls = {
        enable = true,
      },
      route_info = {
        enable = true, --- to enable the laravel.nvim virtual text
        position = "right", --- where to show the info (available options 'right', 'top')
        middlewares = true, --- wheather to show the middlewares section in the info
        method = true, --- wheather to show the method section in the info
        uri = true, --- wheather to show the uri section in the info
      },
    },
  },
  config = true,
}