return {
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    keys = {
      { "gd", "<cmd>Lspsaga goto_definition<CR>", desc = "Lspsaga Goto Definition" },
      { "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Lspsaga Diagnostic Jump Next" },
      { "<leader>ca", "<cmd>Lspsaga code_action<CR>", desc = "Lspsaga Code Action" },
      { "K", "<cmd>Lspsaga hover_doc<CR>", desc = "Lspsaga Hover Doc" },
    },
    config = function()
      require("lspsaga").setup({
        ui = {
          border = "rounded",
        },
      })
    end,
  },
}
