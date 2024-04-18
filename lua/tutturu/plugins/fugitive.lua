return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus" })
		vim.keymap.set("n", "<leader>ga", ":G add %<CR>", {
			desc = "[G]it [a]dd Current File",
		})
		vim.keymap.set("n", "<leader>gA", ":G add .<CR>", {
			desc = "[G]it [A]dd All",
		})
		vim.keymap.set("n", "<leader>gc", ":G commit -S <CR>", {
			desc = "[G]it [C]ommit",
		})
		vim.keymap.set("n", "<leader>gp", ":G push <CR>", {
			desc = "[G]it [P]ush",
		})
	end,
}
