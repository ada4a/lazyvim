return {
  { "neovim/nvim-lspconfig", opts = { servers = { rust_analyzer = { auto_start = false } } } },
  { "stevearc/conform.nvim", opts = { rust = { "rustfmt" } } },
  {
    "mrcjkb/rustaceanvim",
    -- stylua: ignore
    keys = {
      {"<leader>cm",  group = "move item"},
      {"<leader>cmu", function() vim.cmd.RustLsp({ "moveItem", "up" }) end, desc = "Move Item Up"},
      {"<leader>cmd", function() vim.cmd.RustLsp({ "moveItem", "down" }) end, desc = "Move Item Down"},
    },
  },
}
