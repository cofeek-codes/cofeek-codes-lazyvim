return {
  "nvim-lualine/lualine.nvim",
  optional = true,
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    table.remove(opts.sections.lualine_c, 4)
    table.insert(opts.sections.lualine_c, 4, {
      LazyVim.lualine.pretty_path({ modified_sign = " [+] " }),
    })
    table.remove(opts.sections.lualine_c, 5)
    table.insert(opts.sections.lualine_x, 2, {
      function()
        if vim.opt.keymap._value == "" then
          return "ENG"
        else
          return "RU"
        end
      end,
      color = function()
        return { fg = Snacks.util.color("GruvboxOrange", "fg") }
      end,
    })
  end,
}
