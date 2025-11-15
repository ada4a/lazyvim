return {
  -- Manage packages using Nix
  { "mason-org/mason.nvim", enabled = false },
  { "mason-org/mason-lspconfig.nvim", enabled = false },
  -- Installs and sets up DAPs via mason, so turn it off as well
  { "jay-babu/mason-nvim-dap.nvim", enabled = false },

  { "nvim-mini/mini.pairs", enabled = false },
}
