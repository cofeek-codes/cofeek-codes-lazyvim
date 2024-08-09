return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        signs = {
          { name = "DiagnosticSignError", text = "E" },
          { name = "DiagnosticSignWarning", text = "W" },
          { name = "DiagnosticSignInformation", text = "I" },
          { name = "DiagnosticSignHint", text = "H" },
        },
        virtual_text = {
          prefix = "■",
          header = "",
        },
      },
    },
  },
}
