-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.whichwrap:append("<,>,[,]")

vim.g.mapleader = " "
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.guicursor = {
  "n-v-c:block",
  "i:ver50",
  "r-cr:hor20",
}

vim.opt.number = true

vim.opt.title = true
vim.opt.titlestring = "nvim"
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "fish"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.splitkeep = "cursor"

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

if vim.fn.has("nvim-0.8") == 1 then
  vim.opt.cmdheight = 0
end

vim.g.autoformat = false

vim.g.neovide_line_spacing = 10
vim.g.editorconfig = true

vim.cmd("autocmd BufRead,BufNewFile *.hbs set filetype=html")

vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true

-- vim.opt.updatetime = 50
-- vim.opt.mouse = ""
-- vim.opt.fillchars = "vert:⎟,horiz:━,verthoriz:╋,horizup:┻,horizdown:┳,vertleft:┫,vertright:█,eob: " -- more obvious separator
vim.opt.fillchars = "vert:▕,verthoriz: ,horizup: ,horizdown: ,vertleft: ,vertright: ,eob: " -- more obvious separator

-- vim.opt.fillchars = "vert:▕,verthoriz: ,horizup: ,horizdown: ,vertleft: ,vertright: ,eob: " -- more obvious separator

local h = vim.lsp.handlers["textDocument/diagnostic"]
vim.lsp.handlers["textDocument/diagnostic"] = function(err, method, params, client_id)
  if err then
    if err.code == -32603 then
      return
    end
  end

  return h(err, method, params, client_id)
end

-- vim.lsp.handlers["window/showMessage"] = function(err, method, params, client_id)
--   if params and params.message and params.message:match("Could not find config file") then
--     return
--   end
--   return vim.lsp.handlers["window/showMessage"](err, method, params, client_id)
-- end
