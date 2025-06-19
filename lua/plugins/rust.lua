local types = require("rustaceanvim.types.internal")
local os = require("rustaceanvim.os")
local default_config = require("rustaceanvim.config.internal")

return {
  { "neovim/nvim-lspconfig", opts = { servers = { rust_analyzer = { auto_start = false } } } },
  { "stevearc/conform.nvim", opts = { rust = { "rustfmt" } } },
  {
    "mrcjkb/rustaceanvim",
    -- stylua: ignore
    keys = {
      {"<leader>cm",  group = "move item"},
      {"<leader>cmu", function() vim.cmd.RustLsp({ "moveItem", "up" }) end, desc = "Move Item Up"},
      {"<leader>cmd", function() vim.cmd.RustLsp({ "moveItem", "down" }) end, desc = "Move Item Down"},
    },
    server = {
      auto_attach = function(bufnr)
        if #vim.bo[bufnr].buftype > 0 then
          return false
        end
        local path = vim.api.nvim_buf_get_name(bufnr)
        -- START my addition
        if path == "home/ada4a/dev/minor/rust" then
          return false
        end
        -- END my addition
        if not os.is_valid_file_path(path) then
          return false
        end
        local cmd = types.evaluate(default_config.server.cmd)
        if type(cmd) == "function" then
          -- This could be a function that connects via a TCP socket, so we don't want to evaluate it.
          return true
        end
        ---@cast cmd string[]
        local rs_bin = cmd[1]
        return vim.fn.executable(rs_bin) == 1
      end,
    },
  },
}
