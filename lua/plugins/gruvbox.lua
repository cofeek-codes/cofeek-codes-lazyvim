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
        ["@markup.heading.1.html"] = { link = "@none.html" },
        ["@markup.heading.2.html"] = { link = "@none.html" },
        ["@markup.heading.3.html"] = { link = "@none.html" },
        ["@markup.heading.4.html"] = { link = "@none.html" },
        ["@markup.heading.5.html"] = { link = "@none.html" },
        ["@markup.heading.6.html"] = { link = "@none.html" },
        ["@markup.link.label.html"] = { link = "@none.html" },
      },
    },
  },
}
