return {
  -- Make sure nvim-lspconfig is loaded and configured
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- This 'servers' table is where you configure individual LSP servers
      servers = {
        -- Configuration for pyright
        pyright = {
          -- The content of 'settings' goes directly here
          settings = {
            python = {
              -- Use vim.fn.getcwd() to dynamically get the current project root
              -- This ensures it works correctly if you open Neovim from the project's root.
              pythonPath = vim.fn.getcwd() .. '/.venv/bin/python',
              analysis = {
                typeCheckingMode = "basic", -- Options: "basic", "strict", "off"
                use = "pyright",            -- Explicitly state using pyright
              },
            },
          },
          -- Any other pyright-specific capabilities or on_attach functions can go here
        },

        -- If you're also using ruff-lsp (as discussed previously), its configuration
        -- might look like this, often alongside pyright for linting/formatting.
        -- ruff_lsp = {}, -- ruff-lsp typically works with minimal config here, if enabled as a plugin
      },
    },
  },
  -- You might also have a separate entry for ruff-lsp if you installed it as a plugin
  -- For example:
  -- {
  --   "astral-sh/ruff-lsp",
  --   event = "BufReadPost", -- Or other appropriate event
  --   ft = { "python" },
  --   opts = {}, -- Any specific options for ruff-lsp plugin itself
  -- },
}
