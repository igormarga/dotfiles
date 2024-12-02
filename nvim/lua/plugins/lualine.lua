local function macro_recording_status()
  local function current_status()
    local register = vim.fn.reg_recording()
    return register == "" and "" or "RECORDING @" .. register
  end
  return { "macro-recording", fmt = current_status }
end

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "SmiteshP/nvim-navic", -- Зависимость для navic
  },
  init = function()
    vim.opt.laststatus = 3 -- Глобальный статусбар
  end,
  config = function()
    local lualine = require("lualine")
    -- local icons = LazyVim.config.icons

    local opts = {
      options = {
        component_separators = "",
        disabled_filetypes = { "alpha", "NvimTree", "neo-tree" },
      },
      sections = {
        lualine_b = {
          "branch",
          "diff",

          "diagnostics",
        },
        lualine_c = { "filename" },
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = {
          { "location", separator = { right = "", left = "" } },
        },
      },
      winbar = {
        -- lualine_a = { "filename" }, -- Имя файла в winbar
        lualine_b = {
          -- LazyVim.lualine.root_dir(),
          -- { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { LazyVim.lualine.pretty_path({ length = 10 }) },
        },
      },
      inactive_winbar = {
        lualine_a = { "filename" },
        lualine_b = { "navic" },
      },
      extensions = { "nvim-tree", "fzf" },
    }

    -- if vim.g.trouble_lualine and LazyVim.has("trouble.nvim") then
    --   local trouble = require("trouble")
    --   local symbols = trouble.statusline({
    --     mode = "symbols",
    --     groups = {},
    --     title = false,
    --     filter = { range = true },
    --     format = "{kind_icon}{symbol.name:Normal}",
    --     hl_group = "lualine_c_normal",
    --   })
    --   table.insert(opts.winbar.lualine_b, {
    --     symbols and symbols.get,
    --     cond = function()
    --       return vim.b.trouble_lualine ~= false and symbols.has()
    --     end,
    --   })
    -- end

    lualine.setup(opts)
  end,
}
