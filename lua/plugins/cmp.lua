return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
      table.insert(opts.sources, { name = "orgmode" })
      table.insert(opts.sources, { name = "buffer" })
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
