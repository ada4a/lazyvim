-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
Snacks.toggle
  .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
  :map("<leader>uC")

vim.keymap.set("n", "<leader>ut", function()
  local themes = { light = "rose-pine-dawn", dark = "terafox" }

  if vim.o.background == "light" then
    vim.cmd.colorscheme(themes.dark)
  else
    vim.cmd.colorscheme(themes.light)
    -- NOTE: setting "rose-pine-dawn" by itself doesn't change `background`
    -- NOTE: need to set the colorscheme first,
    -- otherwise brackets will retain their color from terafox
    vim.o.background = "light"
  end
end, { desc = "Toggle dark/light theme" })
