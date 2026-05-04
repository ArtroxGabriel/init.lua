return {
  ---@module "conform"
  {
    "stevearc/conform.nvim",
    ---@param opts conform.setupOpts
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      local prettier_fts = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "css",
        "scss",
        "less",
        "html",
        "json",
        "yaml",
      }

      for _, ft in ipairs(prettier_fts) do
        opts.formatters_by_ft[ft] = { "prettier" }
      end

      opts.formatters_by_ft["markdown"] = { "prettier", "markdownlint-cli2", "markdown-toc" }
      opts.formatters_by_ft["markdown.mdx"] = { "prettier", "markdownlint-cli2", "markdown-toc" }
      opts.formatters_by_ft["go"] = { "golangci-lint", "goimports", "gofumpt" }
    end,
  },
}
