return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").load_standalone({
        path = "~/.config/nvim/snippets/global.code-snippets",
        lazy = true,
      })
    end,
  },
}
