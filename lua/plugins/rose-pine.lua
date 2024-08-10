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
        -- @NOTE: maybe there is a better way to set these colors
        CursorLineNr = { link = "LineNr" },
        MatchParen = { link = "DiagnosticWarn" },
        DiagnosticWarn = { bold = true },
        CursorLine = { bg = "none" },
      },
    },
  },
}
