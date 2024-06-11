local dap = require("dap")
return {
  "mfussenegger/nvim-dap",
  -- stylua: ignore
  keys = {
    {"<F5>",  dap.continue,  desc = "Continue"},
    {"<F10>", dap.step_over, desc = "Step Over"},
    {"<F11>", dap.step_into, desc = "Step Into"},
    {"<F12>", dap.step_out,  desc = "Step Out"}
  },
}
