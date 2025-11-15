return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local path = vim.fs.abspath("~/.config/cosmic/com.system76.CosmicTheme.Mode/v1/is_dark")
        local is_dark = io.open(path):read()
        if is_dark == "true" then
          vim.cmd("colorscheme terafox")
        else
          vim.cmd("colorscheme rose-pine-dawn")
        end
      end,
    },
  },
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  { "EdenEast/nightfox.nvim" },
  { "rose-pine/neovim" },
}
