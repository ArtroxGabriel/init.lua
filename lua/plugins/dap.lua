return {
  "mfussenegger/nvim-dap",

  -- stylua: ignore
  keys = {
    { "<leader>d", "", desc = "+debug", mode = {"n", "v"} },
    { "<F9>", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
    { "<F21>", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
    { "<F5>", function() require("dap").continue() end, desc = "Run/Continue" },
    { "<F17>", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
    { "<F1>", function() require("dap").continue({ before = get_args }) end, desc = "Run with Args" },
    { "<F13>", function() require("dap").terminate() end, desc = "Terminate" },
    { "<leader>dg", function() require("dap").goto_() end, desc = "Go to Line (No Execute)" },
    { "<leader>dj", function() require("dap").down() end, desc = "Down" },
    { "<leader>dk", function() require("dap").up() end, desc = "Up" },
    { "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
    { "<F7>", function() require("dap").step_into() end, desc = "Step Into" },
    { "<F19>", function() require("dap").step_out() end, desc = "Step Out" },
    { "<F8>", function() require("dap").step_over() end, desc = "Step Over" },
    { "<leader>dp", function() require("dap").pause() end, desc = "Pause" },
    { "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
    { "<leader>ds", function() require("dap").session() end, desc = "Session" },
    { "<leader>dw", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },
  },
}
