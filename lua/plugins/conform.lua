return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "phpcs", lsp_format = "prefer" },
        blade = { "blade-formatter" },
        http = { "kulala-fmt" },
      },
      formatters = {
        prettier = {
          prepend_args = { "--no-semi", "--use-tabs", "--single-quote", "--jsx-single-quote", "--arrow-parens=avoid" },
        },
      },
    },
  },
}
