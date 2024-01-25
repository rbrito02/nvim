return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")
        -- As an example, we will create the following mappings:
        --  * <leader>ff find files
        --  * <leader>fr show recent files
        --  * <leader>fb Foobar
        -- we'll document:
        --  * <leader>fn new file
        --  * <leader>fe edit file
        -- and hide <leader>1

        wk.register({
            g = {
                name = "+Git", -- optional group name
                A = "Stage Current File",
                a = "Stage All Changes",
                b = "Branch Manager",
                s = "Git Status",
                S = "Stash Changes",
                c = "Commit Changes",
                p = "Git Push",
                P = "Git Pull",
                f = "Git Fetch"
            },
            h = {
                name = "+Harpoon",
                h = "Go to Mark 1",
                j = "Go to Mark 2",
                k = "Go to Mark 3",
                l = "Go to Mark 4",
                n = "Go to Next Mark",
                p = "Go to Previous Mark",
                s = "Horizontal Split"
            },
            p = {
                name = "+Search Project",
                v = "Nvimtree",
                f = "File Search",
                s = "Grep Search"
            },
            l = "lint file",
            a = "Mark File",
            ["<leader>"] = "Source File",
            d = "Deletes to Void",
            f = "Format File",
            s = "Refactor Current Word",
            u = "Toggle Undotree",
            x = "Compile Bash Script",
            y = "Yank to System Clipboard"
        }, {
            prefix = "<leader>"
        })

    end
}
