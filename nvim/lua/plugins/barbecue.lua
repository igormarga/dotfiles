return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    show_modified = false,
    show_navic = false,
    --
    -- attach_navic = true,
    -- configurations go here
    modifiers = {
      basename = "",
      dirname = ":~:.",
    },
    lead_custom_section = function()
      return " ~ "
    end,

    symbols = {
      separator = "", -- Заменяем `>` на `➜` или другой символ
    },
    theme = {
      normal = { fg = "#808080", bg = "NONE" }, -- Серый цвет текста
      ellipsis = { fg = "#808080", bg = "NONE" }, -- Для многоточия
      separator = { fg = "#808080", bg = "NONE" }, -- Для разделителей
      dirname = { fg = "#808080", bg = "NONE" }, -- Цвет для директории
      basename = { fg = "#D0D0D0", bg = "NONE" }, -- Цвет для имени файла
      context = { fg = "#808080", bg = "NONE" }, -- Цвет для контекста (если используется navic)
    },
  },
}
