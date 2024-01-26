return {

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"tpope/vim-commentary",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			opt = true,
		},
		config = function()
			require("lualine").setup()
		end,
	},
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, {
				desc = "toggle undotree",
			})
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		{
			"catppuccin/nvim",
			name = "catppuccin",
			priority = 1000,
			config = function()
				vim.cmd("colorscheme catppuccin-mocha")
			end,
		},
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
			vim.keymap.set("n", "<leader>gA", ":G add %<CR>", {
				desc = "stage current file",
			})
			vim.keymap.set("n", "<leader>ga", ":G add .<CR>", {
				desc = "stage all changes",
			})
			vim.keymap.set("n", "<leader>gc", ":G commit -S <CR>", {
				desc = "git commit",
			})
			vim.keymap.set("n", "<leader>gp", ":G push <CR>", {
				desc = "git push",
			})
		end,
	},
}
