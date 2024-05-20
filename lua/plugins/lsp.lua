return {
  "neovim/nvim-lspconfig",
  opts = {
    codelens = { enabled = true },
    servers = {
      lua_ls = {},
      rust_analyzer = {},
      taplo = {},
      clangd = {},
      nixd = {},
    },
  },
}
