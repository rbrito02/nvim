return {
    'tpope/vim-fugitive',
    config = function()

        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>gA", ":G add %<CR>", {
            desc = "stage current file"
        })
        vim.keymap.set("n", "<leader>ga", ":G add .<CR>", {
            desc = "stage all changes"
        })
        vim.keymap.set("n", "<leader>gc", ":G commit -S <CR>", {
            desc = "git commit"
        })
        vim.keymap.set("n", "<leader>gp", ":G push <CR>", {
            desc = "git push"
        })
    end
}
