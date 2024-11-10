return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        overrides = function()
          return {
            Visual = { bg = "#ab4242", fg = "#191818" }, -- настройка цвета фона и текста при выделении
            Comment = { fg = "#78B08D" }, -- Комментарии черным цветом
            SignColumn = { bg = "none" }, -- Прозрачный фон для столбца с символами
            LineNr = { bg = "none" }, -- Прозрачный фон для номеров строк

            -- NeoTreeNormal = { bg = "#1a1b26", fg = "#c0caf5" }, -- Цвет основного фона и текста
            -- NeoTreeNormalNC = { bg = "#1a1b26", fg = "#54546d" }, -- Цвет для неактивных

            NeoTreeTabActive = { bg = "#17171e", fg = "none", bold = true }, -- Активная вкладка
            NeoTreeTabInactive = { bg = "#17171e", fg = "#54546d" }, -- Неактивная вкладка
            NeoTreeTabSeparatorActive = { bg = "#17171e", fg = "#17171e" }, -- Разделитель вкладок
            NeoTreeTabSeparatorInactive = { bg = "#17171e", fg = "#17171e" }, -- Разделитель вкладок

            WinSeparator = { fg = "#191824", bg = "none" }, -- Цвет рамки
            TelescopeBorder = { fg = "#6077a6", bg = "none" }, -- Цвет рамки

            GitSignsAdd = { fg = "#a3be8c", bg = "none" }, -- Добавлено
            GitSignsChange = { fg = "#d8a657", bg = "none" }, -- Изменено
            GitSignsDelete = { fg = "#ec7279", bg = "none" }, -- Удалено
          }
        end,
      })
    end,
  },
  {
    "sho-87/kanagawa-paper.nvim",
    config = function()
      require("kanagawa-paper").setup({
        overrides = function()
          return {
            Comment = { fg = "#78B08D" }, -- Комментарии черным цветом
            LineNr = { fg = "#54546d", bg = "#1f1f28" }, -- Цвет текста и фона для номера линии
            Visual = { bg = "#ab4242", fg = "#191818" }, -- настройка цвета фона и текста при выделении
          }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      experimental = {
        ghost_text = false, -- отключаем ghost text
      },
      mapping = {
        -- Remove or redefine <Tab> and <S-Tab> for snippet navigation
        ["<Tab>"] = nil, -- Disable <Tab> navigation
        ["<S-Tab>"] = nil, -- Disable <Shift-Tab> navigation
        -- You can also redefine it to something else if needed
      },
      -- snippet = {
      --   expand = function(_) end, -- оставляем пустым, чтобы отключить поддержку сниппетов
      -- },
    },
  },
}
