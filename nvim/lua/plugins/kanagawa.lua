return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        overrides = function()
          return {
            Visual = { bg = "#ab4242", fg = "#191818" }, -- настройка цвета фона и текста при выделении
            Comment = { fg = "#78B08D" }, -- Комментарии черным цветом
            LineNr = { fg = "#54546d", bg = "#1f1f28" }, -- Цвет текста и фона для номера линии
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
