local dap_status, dap = pcall(require, "dap")

vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })

if not dap_status then
  return
end
dap.configurations.python = {
  {
    name = "Python: Remote Attach",
    type = "python",
    request = "attach",
    connect = function()
      local host = vim.fn.input("Host [0.0.0.0]: ")
      host = host ~= "" and host or "0.0.0.0"
      local port = tonumber(vim.fn.input("Port [5678]: ")) or 5678
      return { host = host, port = port }
    end,
    pathMappings = {
      {
        localRoot = function()
          return vim.fn.input("Local code folder > ", vim.fn.getcwd(), "file")
        end,
        remoteRoot = function()
          return vim.fn.input("Container code folder > ", "/", "file")
        end,
      },
    },
    justMyCode = true,
  },
}
