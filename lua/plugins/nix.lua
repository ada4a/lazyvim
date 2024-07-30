-- Nix is foing to get its own Extra soon, so here I've collected
-- nix-specific settings to delete them all at once

-- TODO change these to use flake.outPath, systemSettings.hostname, and userSettings.username, respectively
local flake = '(builtins.getFlake "$HOME/.dotfiles")'
local nixos = "magicbook"
local user = "ugura"
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nixd = {
          nixpkgs = { expr = string.format("import %s.inputs.nixpkgs {}", flake) },
          options = {
            nixos = { expr = string.format("%s.nixosConfigurations.%s.options", flake, nixos) },
            home_manager = { expr = string.format("%s.homeConfigurations.%s.options", flake, user) },
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = { formatters_by_ft = { nix = { "nixfmt" } } },
  },
}
