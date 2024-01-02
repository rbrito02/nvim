local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}, {desc = "file search"})
vim.keymap.set('n', '<C-p>', builtin.git_files, {}, {desc = "git file search"})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {desc = "git branch manager"})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, {desc = "grep search"})
