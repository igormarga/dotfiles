return {
  "smjonas/live-command.nvim",
  -- live-command supports semantic versioning via Git tags
  tag = "2.2.0",
  config = function()
    require("live-command").setup({
      enable_highlighting = true,
      inline_highlighting = true,
      hl_groups = {
        insertion = "DiffAdd",
        deletion = "DiffDelete",
        change = "DiffChange",
      },
      commands = {
        Norm = { cmd = "norm" },
      },
    })
  end,
}
