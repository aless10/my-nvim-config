local dap = require("dap")
local dapui = require("dapui")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  local opts = { noremap = true, silent = true }
  vim.keymap.set("n", "<leader>ct", "<cmd>:lua require('dapui').close()<CR>", opts)
end
dap.listeners.before.event_exited["dapui_config"] = function()
  local opts = { noremap = true, silent = true }
  vim.keymap.set("n", "<leader>ct", "<cmd>:lua require('dapui').close()<CR>", opts)
end
