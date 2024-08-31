return {
  {
    "ishan9299/nvim-solarized-lua",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "solarized",
        callback = function()
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
          vim.api.nvim_set_hl(0, "Pmenu", { link = "TelescopeNormal" })
          vim.api.nvim_set_hl(0, "LineNr", { fg = "#586e75", bg = "none" })
          vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "CursorLineNr" })
          vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#b58900", bg = "none" })
          vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
          vim.api.nvim_set_hl(0, "Visual", { link = "PmenuSel" })
          vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#dc322f", bg = "none" })
          vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#b58900", bg = "none" })
          vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#268bd2", bg = "none" })
          vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#2aa198", bg = "none" })
          vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#073642" })
          vim.api.nvim_set_hl(0, "LazyButton", { link = "Visual" })
          vim.api.nvim_set_hl(0, "LazyButtonActive", { link = "IncSearch" })
          vim.api.nvim_set_hl(0, "ErrorMsg", { bg = "none" })
          vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = "#000000", bg = "#93a1a1" })
          vim.api.nvim_set_hl(0, "@markup.list.checked", { link = "@text.reference" })
          vim.api.nvim_set_hl(0, "@markup.list.unchecked", { link = "@text.reference" })
          vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = "#586e75", strikethrough = true })
          vim.api.nvim_set_hl(0, "@markup.italic", { italic = true })
          vim.api.nvim_set_hl(0, "@markup.strong", { bg = "none", bold = true })
          vim.cmd("highlight GitSignsAdd guibg=none")
          vim.cmd("highlight GitSignsChange guibg=none")
          vim.cmd("highlight GitSignsDelete guibg=none")
        end,
        group = vim.api.nvim_create_augroup("FixSolarized", { clear = true }),
        desc = "Fix some highlight for solarized colorscheme",
      })
    end,
  },
}
