local dap_python_status, dap_python = pcall(require, "dap-python")

if not dap_python_status then
  return
end

local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
dap_python.test_runner = "pytest"
dap_python.setup(path)
