vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<C-t>", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<C-x>", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<C-n>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<C-p>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<C-c>", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Move to left split" })
keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Move to right split" })
keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Move to upper split" })
keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Move to lower split" })

keymap.set("i", "<C-s>", "<ESC><cmd>w<CR>", { desc = "Save and return to insert mode" })
