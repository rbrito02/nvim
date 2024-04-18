return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	{ "rebelot/kanagawa.nvim" },
	{ "rose-pine/neovim", name = "rosepine" },
	{
		"zaldih/themery.nvim",
		dependencies = { "catppuccin/nvim", "rebelot/kanagawa.nvim" },

		config = function()
			-- Minimal config
			require("themery").setup({
				themes = {
					"rose-pine",
					"rose-pine-dawn",
					"rose-pine-main",
					"rose-pine-moon",
					"catppuccin",
					"kanagawa",
					"catppuccin-frappe",
					"catppuccin-latte",
					"catppuccin-macchiato",
					"catppuccin-mocha",
					"kanagawa-dragon",
					"kanagawa-lotus",
					"kanagawa-wave",
				}, -- Your list of installed colorschemes
				themeConfigFile = "~/.config/nvim/lua/tutturu/themeconfig.lua", -- Described below
				livePreview = true, -- Apply theme while browsing. Default to true.
			})
			vim.cmd("colorscheme rose-pine")
		end,
	},
}
