-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim

-- Closing buffers after loading session
-- vim.api.nvim_create_autocmd("User", {
--   pattern = "PersistenceLoadPost",
--   callback = function()
--     local buffers = vim.fn.getbufinfo({ buflisted = 1 })
--
--     for _, buf in ipairs(buffers) do
--       vim.api.nvim_buf_delete(buf.bufnr, { force = true })
--     end
--   end,
-- })

-- Closing [No Name] buffer if any file is opened
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local current_buf = vim.api.nvim_get_current_buf()
    local buftype = vim.api.nvim_buf_get_option(current_buf, "buftype")

    if buftype == "" then
      local buffers = vim.fn.getbufinfo({ buflisted = 1 })

      for _, buf in ipairs(buffers) do
        if buf.name == "" and buf.bufnr ~= current_buf then
          vim.api.nvim_buf_delete(buf.bufnr, { force = true })
        end
      end
    end
  end,
})

-- local ignore_filetypes = { "neo-tree" }
-- local ignore_buftypes = { "nofile", "prompt", "popup" }
--
-- local augroup = vim.api.nvim_create_augroup("FocusDisable", { clear = true })
--
-- vim.api.nvim_create_autocmd("WinEnter", {
--   group = augroup,
--   callback = function(_)
--     if vim.tbl_contains(ignore_buftypes, vim.bo.buftype) then
--       vim.w.focus_disable = true
--     else
--       vim.w.focus_disable = false
--     end
--   end,
--   desc = "Disable focus autoresize for BufType",
-- })
--
-- vim.api.nvim_create_autocmd("FileType", {
--   group = augroup,
--   callback = function(_)
--     if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
--       vim.b.focus_disable = true
--     else
--       vim.b.focus_disable = false
--     end
--   end,
--   desc = "Disable focus autoresize for FileType",
-- })
