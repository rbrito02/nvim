return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    -- or                              , branch = '0.1.x',
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>pf", builtin.find_files, {}, "file search")
        vim.keymap.set("n", "<C-p>", builtin.git_files, {}, {
            desc = "git file search"
        })
        vim.keymap.set("n", "<leader>gb", builtin.git_branches, {
            desc = "git branch manager"
        })
        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({
                search = vim.fn.input("Grep > ")
            })
        end, {
            desc = "grep search"
        })

        local colors = require("catppuccin.palettes").get_palette()
        local TelescopeColor = {
            TelescopeMatching = {
                fg = colors.flamingo
            },
            TelescopeSelection = {
                fg = colors.text,
                bg = colors.surface0,
                bold = true
            },

            TelescopePromptPrefix = {
                bg = colors.surface0
            },
            TelescopePromptNormal = {
                bg = colors.surface0
            },
            TelescopeResultsNormal = {
                bg = colors.mantle
            },
            TelescopePreviewNormal = {
                bg = colors.mantle
            },
            TelescopePromptBorder = {
                bg = colors.surface0,
                fg = colors.surface0
            },
            TelescopeResultsBorder = {
                bg = colors.mantle,
                fg = colors.mantle
            },
            TelescopePreviewBorder = {
                bg = colors.mantle,
                fg = colors.mantle
            },
            TelescopePromptTitle = {
                bg = colors.pink,
                fg = colors.mantle
            },
            TelescopeResultsTitle = {
                fg = colors.mantle
            },
            TelescopePreviewTitle = {
                bg = colors.green,
                fg = colors.mantle
            }
        }

        for hl, col in pairs(TelescopeColor) do
            vim.api.nvim_set_hl(0, hl, col)
        end
    end
}