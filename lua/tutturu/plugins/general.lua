return {
	{ "ThePrimeagen/vim-be-good" },
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, {
				desc = "[U]ndotree",
			})
		end,
	},
	{ "Bekaboo/deadcolumn.nvim" },
}
