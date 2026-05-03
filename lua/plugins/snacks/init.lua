return {
  ---@module "snacks"
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      picker = {
        win = {
          preview = {
            wo = {
              wrap = true,
            },
          },
        },
      },
    },
  },
}
