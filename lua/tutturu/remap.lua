vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<cr>", {
	desc = "file explorer",
})
vim.keymap.set("n", "<leader>md", "<cmd>silent !open -a typora %<CR>", {
	desc = "Open File in Typora",
})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {
	desc = "move selection down",
})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {
	desc = "move selection up",
})

vim.keymap.set("n", "J", "mzJ`z", {
	desc = "Joins Line Below",
})
vim.keymap.set("n", "<C-d>", "<C-d>zz", {
	desc = "move halfway down page",
})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {
	desc = "move halfway up page",
})
vim.keymap.set("n", "n", "nzzzv", {
	desc = "goto next search result",
})
vim.keymap.set("n", "N", "Nzzzv", {
	desc = "goto prev search result",
})

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], {
	desc = "copy to system",
})
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.config/tmux/tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>hs", ":wincmd s<CR>")
vim.keymap.set("n", "<leader>vs", ":wincmd v<CR>")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
	desc = "refactor word",
})
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {
	silent = true,
}, {
	desc = "compile bash script",
})

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end, {
	desc = "source file",
})
