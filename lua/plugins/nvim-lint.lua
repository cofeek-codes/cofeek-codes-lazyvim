return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    config = function()
      local phpcs = require("lint").linters.phpcs
      phpcs.args = {
        "-q",
        "--standard='~/.config/phpcs.xml'",
        "--report=json",
        "-",
      }
    end,
  },
}
