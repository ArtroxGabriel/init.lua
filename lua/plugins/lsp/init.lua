return {
  -- Make sure nvim-lspconfig is loaded and configured
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        bashls = {
          filetypes = { "sh", "zsh" }, -- Attach bash-language-server to zsh files
        },
        -- Configuration for pyright
        pyright = {
          -- The content of 'settings' goes directly here
          settings = {
            python = {
              -- Use vim.fn.getcwd() to dynamically get the current project root
              -- This ensures it works correctly if you open Neovim from the project's root.
              pythonPath = vim.fn.getcwd() .. "/.venv/bin/python",
              analysis = {
                typeCheckingMode = "basic", -- Options: "basic", "strict", "off"
                use = "pyright", -- Explicitly state using pyright
              },
            },
          },
        },
      },
    },
  },
}
