return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
      bold = false,
      overrides = {
        PmenuSel = { link = "Visual" },
        CursorLine = { bg = "none" },
        CursorLineNr = { bg = "none" },
        NeoTreeTitleBar = { fg = "#000000", bg = "#93a1a1" },
        ["@tag.html"] = { link = "htmlTag" },
      },
    },
  },
}
