return {
  "stevearc/conform.nvim",

  opts = {
    -- Define your formatters
    formatters_by_ft = {
      c = { "clang-format" },
      javascript = { "clang-format" },
      json = { "clang-format" },
      lua = { "stylua" },
      nix = { "alejandra" },
      python = { "isort", "lack" },
      rust = { "rustfmt" },
    },
  },
}
