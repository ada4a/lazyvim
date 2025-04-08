return {
  { "neovim/nvim-lspconfig", opts = { servers = { rust_analyzer = { auto_start = false } } } },
  { "stevearc/conform.nvim", opts = { rust = { "rustfmt" } } },
}
