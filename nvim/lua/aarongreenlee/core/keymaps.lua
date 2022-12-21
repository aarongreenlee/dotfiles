
-- set the leader key to "spacebar"
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- general
keymap.set("i", "jk", "<ESC>") -- escape using 'jk'
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highlighitng
keymap.set("n", "x", '"_x') -- do not copy deleted characters to register
keymap.set("n", "<leader>+", "<C-a>") -- incrmeent number
keymap.set("n", "<leader>-", "<C-x>") -- decrement number

-- windows
keymap.set("n", "<leader>s|", "<C-w>v") -- split vertically
keymap.set("n", "<leader>s-", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- resize to equalize width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to the next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to the previous tab

-- plugins

-- Move between windows using the vim-tmux-navigator plugin:
-- leader, C-h: move window focus left
-- leader, C-j: move window focus down
-- leader, C-k: move window focus up
-- leader, C-l: move window" focus right

-- maximize windows: toggle window maximization
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- vim-surround: surround text with characters, swap characters, etc.
  -- To surround with a character (e.g., ") y,s + motion + :character
  -- To delete a surrounded charater d,s + motion + :character
  -- To change a surrounded character c,s + motion + :replace + replacedBy

-- replace text with register
  -- y,w to copy a word and then g,r,w to replace a word

-- commenting plugin
  -- g,c,c to comment selected text

-- nvim-tree
keymap.set("n", "<leader>12", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>11", ":NvimTreeFocus<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")



