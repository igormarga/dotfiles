return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    source_selector = {
      winbar = true,
      statusline = false,
      padding = 0,
      sources = {
        { source = "filesystem", display_name = "  󰉓 Files" },
        { source = "git_status", display_name = "     Git status  " },
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          "node_modules",
          ".DS_Store",
          "thumbs.db",
        },
        -- never_show = {
        --   ".git",
        -- },
      },
    },
  },
}
