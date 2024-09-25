return {
  { "stevearc/conform.nvim", opts = { rust = { "rustfmt" } } },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = { ["rust-analyzer"] = {
          imports = { preferNoStd = true },
        } },
      },
    },
  },
}
