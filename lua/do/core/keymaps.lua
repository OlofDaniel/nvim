vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "Clears search highlights" })

keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

keymap.set({ "n", "v", "o" }, "L", "$", { desc = "Go to end of line" })
keymap.set({ "n", "v", "o" }, "H", "_", { desc = "Go to start of line" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
keymap.set("n", "<leader>bb", "<C-^>", { desc = "Switch to last used buffer" })

keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

vim.keymap.set("n", "<leader>sr", function()
	local search = vim.fn.input("Search for:")
	if search == "" then
		return
	end
	local replace = vim.fn.input("Replace with: ")

	vim.cmd(string.format("%%s/%s/%s/gc", search, replace))
end, { desc = "Search and replace" })

keymap.set("n", "dw", 'vb"_d')

keymap.set("v", "<leader>n", ":norm ")

keymap.set({ "n", "v" }, "<leader>p", '"0p')
