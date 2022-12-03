m.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- general
keymap.set("i", "jk", "<ESC>") -- escape using 'jk'
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highlighitng
keymap.set("n", "x", '"_x') -- do not copy deleted characters to register
keymap.set("n", "<leader>+", "<C-a>") -- incrmeent number
keymap.set("n", "<leader>-", "<C-x>") -- decrement number

-- windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- resize to equalize width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split
-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to the next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to the previous tab

-- plugins

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")




