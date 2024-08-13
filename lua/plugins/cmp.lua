return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
      table.insert(opts.sources, { name = "orgmode" })
      opts.window = {
        completion = {
          border = "rounded",
          winhighlight = "Normal:MyHighlight,CursorLine:PmenuSel",
          winblend = 0,
        },

        documentation = {
          border = "rounded",
          winhighlight = "Normal:MyHighlight",
          winblend = 0,
        },
      }
    end,
  },
}
