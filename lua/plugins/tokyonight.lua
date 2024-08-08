return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    confing = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "tokyonight",
        callback = function()
          vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
          vim.api.nvim_set_hl(0, "Pmenu", { link = "TelescopeNormal" })
        end,
        group = vim.api.nvim_create_augroup("FixTokyoNight", { clear = true }),
        desc = "Fix some highlight for tokyonight colorscheme",
      })
    end,
  },
}
