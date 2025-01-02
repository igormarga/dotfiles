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

            WinSeparator = { fg = "#17171e", bg = "none" }, -- Цвет рамки TelescopeBorder = { fg = "#6077a6", bg = "none" }, -- Цвет рамки

            GitSignsAdd = { fg = "#a3be8c", bg = "none" }, -- Добавлено
            GitSignsChange = { fg = "#d8a657", bg = "none" }, -- Изменено
            GitSignsDelete = { fg = "#ec7279", bg = "none" }, -- Удалено
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
