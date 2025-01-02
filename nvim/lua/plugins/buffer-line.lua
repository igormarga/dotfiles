---@diagnostic disable: duplicate-set-field
return {
  "akinsho/bufferline.nvim",
  opts = function()
    require("bufferline").setup({
     options = {
        -- separator_style = "thick",
        always_show_bufferline = true, -- Добавляем эту строку
      },
      highlights = {
        offset_separator = {
          bg = "none",
          fg = "#17171e",
        },
      },
    })

    return {
      options = {
        show_buffer_close_icons = false,
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
            highlight = "Directory",
            text_align = "left",
            separator = "╭",
            -- separator = "█",
          },
        },
        ---@param opts bufferline.IconFetcherOpts
        get_element_icon = function(opts)
          return LazyVim.config.icons.ft[opts.filetype]
        end,
      },
    }
    --   options = {
    --     show_buffer_close_icons = false,
    --     -- separator_style = { "<", ">" },
    --     always_show_bufferline = true, -- Добавляем эту строку
    --   }
    -- }
  end,
}
