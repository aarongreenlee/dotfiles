-- keymaps file is where most keyboard shortcuts are defined.
-- some keyboard shortcuts may be found in plugins/*.

-- set the leader key to "spacebar"
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- the following are standard commands that
-- I'll document for my own poor memory:
-- CRTL+i to step forward through file edits
-- CTRL+o to step backward through file edits

-- general
keymap.set("i", "jk", "<ESC>") -- escape using 'jk' at the same time
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highlighitng
keymap.set("n", "x", '"_x') -- do not copy deleted characters to register
keymap.set("n", "<leader>+", "<C-a>") -- incrmeent number
keymap.set("n", "<leader>-", "<C-x>") -- decrement number

-- splits
keymap.set("n", "<leader>ss", "<C-w>v") -- split vertically
keymap.set("n", "<leader>s-", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- resize to equalize width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split
keymap.set("n", "<leader>sw", "<C-w>")

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to the next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- to the previous tab

-- move line(s) up/down without mutating the register
keymap.set("n", "<S-Up>", ":m .-2<CR>==") -- move line up
keymap.set("n", "<S-Down>", ":m .+1<CR>==") -- move line up
keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv") -- move selected line(s) up
keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv") -- move selected line(s) down

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
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  -- find files 
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")   -- find strings
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find current string the cursor is on throughout the project
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")     -- search active buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")   -- search help tags



