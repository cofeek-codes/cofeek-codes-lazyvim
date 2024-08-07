return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        prettier = {
          prepend_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--arrow-parens=avoid" },
        },
      },
    },
  },
}
