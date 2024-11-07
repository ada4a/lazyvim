return {
  -- Manage packages using Nix
  { "williamboman/mason.nvim", enabled = false },
  -- Installs and sets up DAPs via mason, so turn it off as well
  { "jay-babu/mason-nvim-dap.nvim", enabled = false },
  -- Manage grammars using Nix
  { "nvim-treesitter/nvim-treesitter", enabled = false },
  -- Uses nvim-treesitter, so turn it off as well
  { "nvim-treesitter-textobjects", enabled = false },
}
