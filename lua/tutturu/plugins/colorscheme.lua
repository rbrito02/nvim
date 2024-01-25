return {"rebelot/kanagawa.nvim", {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd("colorscheme catppuccin-mocha")
    end
}}

