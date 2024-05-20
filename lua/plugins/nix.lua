-- Nix is foing to get its own Extra soon, so here I've collected
-- nix-specific settings to delete them all at once
return {
  {
    "neovim/nvim-lspconfig",
    opts = { servers = { nixd = {} } },
  },
  {
    "stevearc/conform.nvim",
    opts = { formatters_by_ft = { nix = { "alejandra" } } },
  },
}
