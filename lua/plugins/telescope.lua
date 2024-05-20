return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fd", require("lazyvim.util").telescope("find_files", { cwd = "~/.dotfiles" }), desc = "Find Dotfiles" },
    { "<leader>sd", require("lazyvim.util").telescope("live_grep", { cwd = "~/.dotfiles" }), desc = "Grep Dotfiles" },
    -- prevent builtin colors from being displayed in the picker
    {
      "<leader>uC",
      function()
        -- stylua: ignore
        local builtins = { "zellner", "torte", "slate", "shine", "ron", "quiet", "peachpuff",
          "pablo", "murphy", "lunaperche", "koehler", "industry", "evening", "elflord",
          "desert", "delek", "default", "darkblue", "blue", "morning"}

        local target = vim.fn.getcompletion

        ---@diagnostic disable-next-line: duplicate-set-field
        vim.fn.getcompletion = function()
          return vim.tbl_filter(function(color)
            return not vim.tbl_contains(builtins, color)
          end, target("", "color"))
        end

        require("lazyvim.util").telescope("colorscheme", { enable_preview = true })()
        vim.fn.getcompletion = target
      end,
      desc = "Colorscheme with Preview",
    },
  },
}
