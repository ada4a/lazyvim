return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        -- stylua: ignore
        keys = {
          { icon = " ", key = "d", desc = "Dotfiles", action = ":lua Snacks.dashboard.pick('files', { cwd = '~/.dotfiles' })", }, -- my addition
        },
      },
    },
  },
}
