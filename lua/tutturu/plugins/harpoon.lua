-- Harpoon
-- Harpoon
return
-- Harpoon
{

	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>hm", function()
			harpoon:list():append()
		end, { desc = "[H]arpoon [M]ark" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "[H]arpoon M[E]nu" })

		vim.keymap.set("n", "<leader>hp", function()
			harpoon:list():prev()
		end, { desc = "[H]arpoon [P]revious" })
		vim.keymap.set("n", "<leader>hn", function()
			harpoon:list():next()
		end, { desc = "[H]arpoon [N]ext" })
		vim.keymap.set("n", "<leader>hh", function()
			harpoon:list():select(1)
		end, { desc = "[H]arpoon [H]Mark 1" })
		vim.keymap.set("n", "<leader>hj", function()
			harpoon:list():select(2)
		end, { desc = "[H]arpoon [H]Mark 2" })
		vim.keymap.set("n", "<leader>hk", function()
			harpoon:list():select(3)
		end, { desc = "[H]arpoon [H]Mark 3" })
		vim.keymap.set("n", "<leader>hl", function()
			harpoon:list():select(4)
		end, { desc = "[H]arpoon [H]Mark 4" })
	end,
}

