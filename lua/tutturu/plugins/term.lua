return {
	"NvChad/nvterm",
	config = function()
		require("nvterm").setup()
		local currentFilePath = vim.fn.expand("%:p")
		local ft_cmds = {
			python = "python3 " .. currentFilePath,
			print(currentFilePath),
			java = "javac " .. vim.fn.expand("%") .. " && java " .. vim.fn.expand("%"),
		}
		vim.keymap.set({ "n", "t" }, "<C-t>", function()
			require("nvterm.terminal").toggle("float")
		end)

		vim.keymap.set("n", "<C-r>", function()
			require("nvterm.terminal").send(ft_cmds[vim.bo.filetype], "float")
		end)
	end,
}
