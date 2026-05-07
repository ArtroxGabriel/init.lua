return {
  ---@module "lazyvim"
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type table<string, lazyvim.lsp.Config|boolean>
      servers = {
        bashls = {
          filetypes = { "sh", "zsh" }, -- Attach bash-language-server to zsh files
        },
        -- Configuration for pyright

        pyrefly = {},
        pyright = {
          enabled = false,
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
        gopls = {
          settings = {
            gopls = {
              buildFlags = { "-tags=integration" },
              gofumpt = true,
              codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              analyses = {
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              usePlaceholders = true,
              completeUnimported = true,
              staticcheck = true,
              directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
              semanticTokens = true,
            },
          },
        },
      },
    },

    ---@type table<string, fun(server:string, opts: vim.lsp.Config):boolean?>
    setup = {
      gopls = function(_, opts)
        -- workaround for gopls not supporting semanticTokensProvider
        -- https://github.com/golang/go/issues/54531#issuecomment-1464982242
        Snacks.util.lsp.on({ name = "gopls" }, function(_, client)
          if not client.server_capabilities.semanticTokensProvider then
            local semantic = client.config.capabilities.textDocument.semanticTokens
            client.server_capabilities.semanticTokensProvider = {
              full = true,
              legend = {
                tokenTypes = semantic.tokenTypes,
                tokenModifiers = semantic.tokenModifiers,
              },
              range = true,
            }
          end
        end)
        -- end workaround
      end,
    },
  },
}
