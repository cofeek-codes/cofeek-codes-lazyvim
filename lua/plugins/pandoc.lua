return {
  {
    "aspeddro/pandoc.nvim",
    config = function()
      require("pandoc").setup({
        default = {
          args = {
            { "--standalone" },
            { "--pdf-engine", "xelatex" },
            { "--variable", "mainfont=DejaVuSans" },
          },
        },
      })
    end,
  },
}
