-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.shell = "/bin/zsh"  -- или /bin/bash, в зависимости от того, какую оболочку вы хотите использовать

vim.env.PATH = "/usr/local/n/versions/node/20.11.0/bin:" .. vim.env.PATH

