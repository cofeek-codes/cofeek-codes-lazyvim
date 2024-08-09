return {

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "main",
      styles = {
        transparency = true,
        italic = false,
        bold = false,
      },

      highlight_groups = {
        CursorLineNr = { link = "LineNr" },
      },
    },
  },
}
