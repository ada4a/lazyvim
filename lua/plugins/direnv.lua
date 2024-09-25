return {
  { "actionshrimp/direnv.nvim" },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        -- Start lsp only after direnv.nvim is finished
        auto_attach = function(bufnr)
          vim.api.nvim_create_autocmd("User", {
            pattern = { "DirenvLoaded", "DirenvNotFound" },
            callback = function()
              require("rustaceanvim.lsp").start(bufnr)
            end,
            once = true,
          })
          return false
        end,
      },
    },
  },
}
