
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "Clears search highlights" })

keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window"})
keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })

keymap.set({ "n", "v", "o"}, "L", "$", { desc = "Go to end of line"})
keymap.set({ "n", "v", "o"}, "H", "0", { desc = "Go to start of line" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save with ctrl + s" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close current buffer" }) 
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Go to next buffer" }) 
keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" }) 
keymap.set("n", "<leader>bb", "<C-^>", { desc = "Switch to last used buffer" })



