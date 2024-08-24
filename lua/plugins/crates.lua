return {
  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      popup = {
        border = "rounded",
      },
      completion = {
        cmp = { enabled = true },
      },
    },
  },
}
