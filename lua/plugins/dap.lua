local dap = require("dap")
return {
  "mfussenegger/nvim-dap",
  -- stylua: ignore
  keys = {
    {"<F5>",  function() dap.continue() end,  desc = "Continue"},
    {"<F10>", function() dap.step_over() end, desc = "Step Over"},
    {"<F11>", function() dap.step_into() end, desc = "Step Into"},
    {"<F12>", function() dap.step_out() end,  desc = "Step Out"}
  },
}
