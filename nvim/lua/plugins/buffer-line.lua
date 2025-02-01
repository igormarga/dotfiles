---@diagnostic disable: duplicate-set-field
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = function()
    require("bufferline").setup({
      options = {
        -- separator_style = "thick",
        always_show_bufferline = true,
      },
      highlights = {
        offset_separator = {

          bg = "#121216",
          fg = "#121216",
        },

        pick_selected = {
          bg = "#ff3222",
          fg = "#ff1216",
        },
        --
        -- indicator_selected = {
        --   bg = "#ff3222",
        --   fg = "#ff1216",
        -- },
        background = {
          bold = false,
          sp = "#121216", -- Цвет границы (полоска слева)
          italic = false,
                    sp = "#17171e", -- Цвет границы (полоска слева)
          underline= true

        },
        buffer_selected = {
          bold = false,
          italic = false,
          sp = "#17171e", -- Цвет границы (полоска слева)
        },
        buffer_visible = {
          bold = false,
          italic = false,

          sp = "#121216", -- Цвет границы (полоска слева)
        },
      },
    })

    return {
      options = {
        separator_style = "thin", -- Первый символ - слева, второй - справа

        show_buffer_close_icons = false,
        show_tab_indicators = false,

        indicator = {
          style = "none"
        },

        close_command = function(n)
          Snacks.bufdelete(n)
        end,
      -- stylua: ignore
        right_mouse_command = function(n) Snacks.bufdelete(n) end,
        diagnostics = "nvim_lsp",
        always_show_bufferline = true,
        diagnostics_indicator = function(_, _, diag)
          local icons = LazyVim.config.icons.diagnostics
          local ret = (diag.error and icons.Error .. diag.error .. " " or "")
            .. (diag.warning and icons.Warn .. diag.warning or "")
          return vim.trim(ret)
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = function()
              local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
              -- local ext = vim.fn.fnamemodify(filename, ":e") -- Получить расширение файла
              local text = "󰲂" .. " " .. filename

              -- local icon = require("nvim-web-devicons").get_icon(filename, ext)

              -- if string.find(filename, "filesystem") then
              text = "~" .. " Project files "

              if string.find(filename, "git_status") then
                text = "" .. " Changes "
              end
              -- elseif icon then
              --   text = icon .. " " .. filename
              -- end

              return text
            end,
            highlight = "TreeTitle",
            text_align = "left",
            -- separator = " ",
            separator = " ",
          },
        },
        ---@param opts bufferline.IconFetcherOpts
        get_element_icon = function(opts)
          return LazyVim.config.icons.ft[opts.filetype]
        end,
      },
    }
  end,
}
