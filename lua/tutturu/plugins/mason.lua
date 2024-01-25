return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "neovim/nvim-lspconfig",
    config = function()

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        require("mason").setup({})
        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {"tsserver", "html", "cssls", "tailwindcss", "svelte", "lua_ls", "graphql", "emmet_ls",
                                "prismals", "pyright", "jdtls"},
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
            require("lspconfig").lua_ls.setup({}),
            require("lspconfig").tsserver.setup({}),
            require("lspconfig").html.setup({}),
            require("lspconfig").cssls.setup({}),
            require("lspconfig").tailwindcss.setup({}),
            require("lspconfig").svelte.setup({}),
            require("lspconfig").graphql.setup({}),
            require("lspconfig").emmet_ls.setup({}),
            require("lspconfig").prismals.setup({}),
            require("lspconfig").pyright.setup({}),
            require("lspconfig").jdtls.setup({})
        })
        mason_tool_installer.setup({
            ensure_installed = {"prettier", -- prettier formatter
            "stylua", -- lua formatter
            "isort", -- python formatter
            "black", -- python formatter
            "clang-format", -- java/c/cpp formatter
            "eslint_d" -- js linter
            }
        })
    end
}
