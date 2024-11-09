return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    source_selector = {
      winbar = true,
      statusline = false,
      padding = 0;
      sources = {
                { source = "filesystem", display_name = "   󰉓 Files" },

        { source = "buffers", display_name = "  Buffers" },
        { source = "git_status", display_name = "   Git" },
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
        never_show = {
          ".git",
        },
      },
    },
    window = {
      position = "left",
      mappings = {},
      title = {
        text = "Explorer",
        highlight = "NeoTreeTitle",
        align = "center",
      },
    },
  },
}
