-- Stolen from http://www.lazyvim.org/extras/util/project#dashboard-nvim-optional
return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local dotfiles = {
      action = require("lazyvim.util").telescope("find_files", { cwd = "~/.dotfiles" }),
      desc = " Dotfiles",
      icon = " ",
      key = "d",
    }

    dotfiles.desc = dotfiles.desc .. string.rep(" ", 43 - #dotfiles.desc)
    dotfiles.key_format = "  %s"

    table.insert(opts.config.center, 3, dotfiles)
  end,
}
