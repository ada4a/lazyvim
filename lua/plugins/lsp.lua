return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = true },
    codelens = { enabled = true },
    -- don't install the LS with mason
    -- reference: https://github.com/LazyVim/LazyVim/issues/1285#issuecomment-1665406771
    servers = {
      lua_ls = { mason = false },
      rust_analyzer = { mason = false },
      taplo = { mason = false },
      clangd = { mason = false },
      nixd = { mason = false },
    },
  },
}
