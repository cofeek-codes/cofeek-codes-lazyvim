return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "phpcs", lsp_format = "prefer" },
      },
      formatters = {
        prettier = {
          prepend_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--arrow-parens=avoid" },
        },
      },
    },
  },
}
