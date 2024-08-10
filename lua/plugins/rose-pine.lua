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
        MatchParen = { fg = "#f6c177", bg = "none", bold = true },
        CursorLine = { bg = "none" },
      },
    },
  },
}
