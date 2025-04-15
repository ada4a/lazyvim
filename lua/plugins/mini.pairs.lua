return {
  "echasnovski/mini.pairs",
  opts = {
    mappings = {
      -- basically pair only [ and {

      ["'"] = false, -- for Rust lifetimes
      ['"'] = false,
      ["`"] = false,
      ["("] = false,
    },
  },
}
