return {
  "S1M0N38/love2d.nvim",
  cmd = "LoveRun",
  opts = {},
  keys = {
    { "<leader>v", ft = { "lua", "glsl" }, desc = "LÖVE" },
    { "<leader>vv", "<cmd>LoveRun<cr>", ft = { "lua", "glsl" }, desc = "Run LÖVE" },
    { "<leader>vs", "<cmd>LoveStop<cr>", ft = { "lua", "glsl" }, desc = "Stop LÖVE" },
  },
}
