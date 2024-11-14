local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { desc = "Previous buffer", noremap = true, silent = true })

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Delete thins without copying in buffer
keymap.set("n", "d", '"_d', opts)
keymap.set("v", "d", '"_d', opts)
keymap.set("n", "d", '"_d', opts)
keymap.set("v", "d", '"_d', opts)
keymap.set("n", "<A-Down>", ":m+1<Return>", opts)
keymap.set("n", "<A-up>", ":m-2<Return>", opts)

keymap.set("v", "<A-Down>", ":m+1<Return>", opts)
keymap.set("v", "<A-up>", ":m-2<Return>", opts)

keymap.set("n", "<leader>t", ":Neotree focus<Return>", opts)
keymap.set("n", "<leader>gp", ":DiffviewOpen<Return>", opts)
keymap.set("n", "<leader>grb", ":Gitsigns reset_buffer<Return>:w<Return>", opts)
keymap.set("n", "<leader>grh", ":Gitsigns reset_hunk<Return>:w<Return>", opts)

keymap.set("n", "<leader>bf", ":silent !open -R %:p<CR>", { desc = "Open current file in Finder" })
