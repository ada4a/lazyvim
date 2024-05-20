return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = true },
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
