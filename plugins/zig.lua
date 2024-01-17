-- https://terminalprogrammer.com/neovim-setup-for-zig

return {
  "mfussenegger/nvim-dap",

  config = function()
    local dap, dapui = require "dap", require "dapui"

    -- sudo apt install lldb (for the command)
    dap.adapters.lldb = {
      type = 'executable',
      command = '/usr/bin/lldb-vscode-16',
      name = 'lldb'
    }
    dap.configurations.zig = {
      {
        name = 'Launch',
        type = 'lldb',
        request = 'launch',
        program = '${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}',
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
      }
    }

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open({})
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close({})
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close({})
    end
  end,
}
