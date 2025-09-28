return {
  "rcarriga/nvim-dap-ui",
  event = "VeryLazy",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  config = function()
    local dap, dapui = require "dap", require "dapui"
    -- https://github.com/mfussenegger/nvim-dap/wiki/C-C---Rust-(via--codelldb)#start-codelldb-automatically
    dap.adapters.codelldb = {
      type = "executable",
      command = "~/.local/share/nvim/mason/packages/codelldb/extension/adapter", -- or if not in $PATH: "/absolute/path/to/codelldb"
    }
    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        console = "integratedTerminal", -- 표줍입력을 허용하는 설정
      },
    }

    dapui.setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end,
}
