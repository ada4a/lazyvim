-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
Snacks.toggle
  .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
  :map("<leader>uC")

-- Modify the default background toggling to also change the theme
vim.keymap.del("n", "<leader>ub")
Snacks.toggle
  .new({
    name = "Light theme",
    get = function()
      return vim.o.background == "light"
    end,
    set = function(state)
      local themes = { light = "rose-pine-dawn", dark = "terafox" }
      -- XXX: no idea why the `not` is necessary here
      if not state then
        vim.cmd.colorscheme(themes.dark)
      else
        vim.cmd.colorscheme(themes.light)
        -- NOTE: setting "rose-pine-dawn" by itself doesn't change `background`
        -- NOTE: need to set the colorscheme first,
        -- otherwise brackets will retain their color from terafox
        vim.o.background = "light"
      end
    end,
  })
  :map("<leader>ub")
