return {
  "neovim/nvim-lspconfig",
  opts = {
    -- turn this off since none of the languages I use support it
    codelens = { enabled = false },
    servers = {
      lua_ls = {},
    },
  },
}
