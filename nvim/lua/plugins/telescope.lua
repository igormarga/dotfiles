return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node%_modules/.*",
      },
    },
    pickers = {
      lsp_definitions = {
        file_ignore_patterns = {}, -- не игнорируем ничего для поиска определений
      },
      colorscheme = {
        enable_preview = true,
      },
    },
  },
}
