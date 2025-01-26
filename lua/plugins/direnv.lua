return {
  {
    "actionshrimp/direnv.nvim",
    opts = {
      async = true,
      on_direnv_finished = function()
        vim.cmd("LspStart")
      end,
    },
  },

  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        -- Start lsp only after direnv.nvim is finished
        auto_attach = function(bufnr)
          vim.api.nvim_create_autocmd("User", {
            group = "direnv-nvim",
            pattern = { "DirenvReady", "DirenvNotFound" },
            callback = function()
              if vim.bo.filetype == "rust" then
                pcall(require("rustaceanvim.lsp").start, bufnr)
              end
            end,
            once = true,
          })
          return false
        end,
      },
    },
  },

  -- disable all the autostarts for direnv.nvim to work

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = { autostart = false },
        jdtls = { autostart = false },
      },
    },
  },

  {
    "Julian/lean.nvim",

    opts = {
      lsp = { autostart = false },
    },
  },
}
