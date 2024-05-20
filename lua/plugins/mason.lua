return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    -- makes mason prefer packages from nix
    -- reference: https://github.com/williamboman/mason.nvim/issues/428#issuecomment-1357203892
    table.insert(opts, { PATH = "append" })
    -- reset ensure_installed that's set by LazyVim extras
    table.insert(opts, { ensure_installed = nil })
  end,
}
