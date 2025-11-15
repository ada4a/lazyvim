return {
  "saghen/blink.cmp",

  opts = function(_, opts)
    opts.sources.providers.snippets = vim.tbl_extend("error", opts.sources.providers.snippets or {}, {
      opts = {
        filter_snippets = function(_, file)
          return not (string.match(file, "friendly.snippets") and string.match(file, "framework"))
        end,
      },
    })
  end,
}
