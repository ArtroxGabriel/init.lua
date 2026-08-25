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
        "jsonc",
        "yaml",
      }

      for _, ft in ipairs(prettier_fts) do
        opts.formatters_by_ft[ft] = { "prettier" }
      end

      opts.formatters_by_ft["markdown"] = { "markdown-toc", "markdownlint-cli2", "prettier" }
      opts.formatters_by_ft["markdown.mdx"] = { "markdown-toc", "markdownlint-cli2", "prettier" }
      opts.formatters_by_ft["go"] = { "golangci-lint", "goimports", "gofumpt" }
      opts.formatters_by_ft["java"] = { "google-java-format" }
    end,
  },
}
