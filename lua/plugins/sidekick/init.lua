return {
  ---@module 'sidekick'
  {
    "folke/sidekick.nvim",
    opts = function(_, opts)
      opts.cli = opts.cli or {}

      ---@type table<string, sidekick.Prompt|string|fun(ctx: sidekick.context.ctx): (string?)>
      local prompts = opts.cli.prompts or {}

      prompts.commit = table.concat({
        "Write a Conventional Commit message for this change:",
        "{this}",
        "",
        "Requirements:",
        "- Use commitizen / Conventional Commits format.",
        "- Title must be under 50 characters.",
        "- Body must be wrapped at 72 characters.",
        "- Use imperative mood.",
        "- Output only a gitcommit code block.",
      }, "\n")

      opts.cli.prompts = prompts
    end,
  },
}
