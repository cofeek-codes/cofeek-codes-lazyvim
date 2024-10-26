return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      local cmp = require("cmp")
      table.insert(opts.sources, { name = "emoji" })
      table.insert(opts.sources, { name = "orgmode" })
      table.insert(opts.sources, { name = "buffer" })
      opts.window = {
        documentation = {
          border = "rounded",
          winhighlight = "Normal:MyHighlight",
          winblend = 0,
        },
      }
      opts.mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
      })
    end,
  },
}
