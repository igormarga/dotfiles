return {
  "petertriho/nvim-scrollbar",
  config = function()
    require("scrollbar").setup({
      handle = {
        color = "#556073", -- Цвет скроллбара (можно заменить на свой)
      },
    })
  end,
}
