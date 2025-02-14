---@diagnostic disable: missing-fields
return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        overrides = function()
          return {
            Visual = { bg = "#ab4242", fg = "#191818" },
            -- Comment = { fg = "#78B08D" },
            LineNr = { bg = "#1f1f28" }, -- Прозрачный фон для номеров строк
            CursorLineNr = { bg = "#1f1f28" },
            -- NeoTreeNormal = { bg = "#1a1b26", fg = "#c0caf5" }, -- Цвет основного фона и текста
            -- NeoTreeNormalNC = { bg = "#1a1b26", fg = "#54546d" }, -- Цвет для неактивных

            NeoTreeTabActive = { bg = "none", fg = "none", bold = true }, -- Активная вкладка
            NeoTreeTabInactive = { bg = "none", fg = "#54546d" }, -- Неактивная вкладка
            -- NeoTreeTabSeparatorActive = { bg = "#17171e", fg = "#17171e" }, -- Разделитель вкладок
            -- NeoTreeTabSeparatorInactive = { bg = "#17171e", fg = "#17171e" }, -- Разделитель вкладок
            --
            DiagnosticSignError = { bg = "none" },
            DiagnosticSignWarn = { bg = "none" },
            DiagnosticSignInfo = { bg = "none" },
            DiagnosticSignHint = { bg = "none" },

            TreeTitle = {
              bg = "#121216",
              fg = "#d8a657",
            },

            BufferLineIconInactive = { fg = "#fff000", bg = "#fff000"},

            WinSeparator = { fg = "#17171e", bg = "none" }, -- Цвет рамки TelescopeBorder = { fg = "#6077a6", bg = "none" }, -- Цвет рамки

            GitSignsAdd = { fg = "#a3be8c", bg = "none" }, -- Добавлено
            GitSignsChange = { fg = "#d8a657", bg = "none" }, -- Изменено
            GitSignsDelete = { fg = "#ec7279", bg = "none" }, -- Удалено
            --
            -- BlinkCmpMenu = { bg = "#1f1f28", fg = "#c0caf5" }, -- Фон меню и текст
            -- BlinkCmpMenuBorder = { bg = "#1f1f28", fg = "#54546d" }, -- Граница меню
            -- BlinkCmpMenuSelection = { bg = "#33467c", fg = "#ffffff" }, -- Выбранный элемент
            --
            -- -- Scrollbar
            -- BlinkCmpScrollBarThumb = { bg = "#54546d", fg = "none" }, -- Ползунок
            -- BlinkCmpScrollBarGutter = { bg = "#1f1f28", fg = "none" }, -- Поле для ползунка
            --
            -- -- Labels
            -- BlinkCmpLabel = { bg = "none", fg = "#c0caf5" }, -- Основной текст
            -- BlinkCmpLabelDeprecated = { bg = "none", fg = "#54546d", strikethrough = true }, -- Устаревший
            -- BlinkCmpLabelMatch = { bg = "none", fg = "#d8a657", bold = true }, -- Подсветка совпадений
            -- BlinkCmpLabelDetail = { bg = "none", fg = "#54546d" }, -- Дополнительная информация
            -- BlinkCmpLabelDescription = { bg = "none", fg = "#6c7086" }, -- Описание
            --
            -- -- Kind icons
            -- BlinkCmpKind = { bg = "none", fg = "#a3be8c", bold = true }, -- Основной вид иконки
            -- BlinkCmpKindVariable = { bg = "none", fg = "#d8a657" }, -- Переменная
            -- BlinkCmpKindFunction = { bg = "none", fg = "#7aa2f7" }, -- Функция
            -- BlinkCmpKindKeyword = { bg = "none", fg = "#ff9e64" }, -- Ключевые слова
            --
            -- -- Sources
            -- BlinkCmpSource = { bg = "none", fg = "#54546d", italic = true }, -- Источник элемента
            -- BlinkCmpGhostText = { bg = "none", fg = "#54546d", italic = true }, -- Призрачный текст (preview)
            --
            -- -- Documentation popup
            -- BlinkCmpDoc = { bg = "#1f1f28", fg = "#c0caf5" }, -- Документация
            -- BlinkCmpDocBorder = { bg = "#1f1f28", fg = "#54546d" }, -- Граница окна документации
            -- BlinkCmpDocSeparator = { bg = "#1f1f28", fg = "#54546d" }, -- Разделитель между деталями
            -- BlinkCmpDocCursorLine = { bg = "#33467c", fg = "#ffffff" }, -- Текущая строка
            --
            -- -- Signature help popup
            -- BlinkCmpSignatureHelp = { bg = "#1f1f28", fg = "#c0caf5" }, -- Подсказка аргументов
            -- BlinkCmpSignatureHelpBorder = { bg = "#1f1f28", fg = "#54546d" }, -- Граница окна
            -- BlinkCmpSignatureHelpActiveParameter = { bg = "#33467c", fg = "#ff9e64", bold = true },
          }
        end,
      })
    end,
  },
  {
    "nyngwang/nvimgelion",
    config = function()
      -- Настройка цветов для темы nvimgelion
      -- vim.api.nvim_set_hl(0, "Visual", { bg = "#ab4242", fg = "#191818" })
      -- vim.api.nvim_set_hl(0, "LineNr", { bg = "#1f1f28" })
      -- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#1f1f28" })
      -- vim.api.nvim_set_hl(0, "NeoTreeTabActive", { bg = "none", fg = "none", bold = true })
      -- vim.api.nvim_set_hl(0, "NeoTreeTabInactive", { bg = "none", fg = "#54546d" })
      -- vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "none" })
      -- vim.defer_fn(function()
      --   vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#433752", bg = "none" })
      -- end, 50)

      -- vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#a3be8c", bg = "none" })
      -- vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#d8a657", bg = "none" })
      -- vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ec7279", bg = "none" })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
