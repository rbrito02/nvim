local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts, { desc = "Go to definition" })
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts, { desc = "Show hover information" })
	vim.keymap.set("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts, { desc = "Workspace symbol search" })
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts, { desc = "Open diagnostic float window" })
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts, { desc = "Go to next diagnostic" })
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts, { desc = "Go to previous diagnostic" })
	vim.keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, opts, { desc = "Code actions" })
	vim.keymap.set("n", "<leader>vrr", function()
		vim.lsp.buf.references()
	end, opts, { desc = "Find references" })
	vim.keymap.set("n", "<leader>vrn", function()
		vim.lsp.buf.rename()
	end, opts, { desc = "Rename symbol" })
	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts, { desc = "Show signature help" })
end)

-- import mason-lspconfig
local mason_lspconfig = require("mason-lspconfig")

local mason_tool_installer = require("mason-tool-installer")

require("mason").setup({})
mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"svelte",
		"lua_ls",
		"graphql",
		"emmet_ls",
		"prismals",
		"pyright",
	},
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
})
mason_tool_installer.setup({
	ensure_installed = {
		"prettier", -- prettier formatter
		"stylua", -- lua formatter
		"isort", -- python formatter
		"black", -- python formatter
		"pylint", -- python linter
		"eslint_d", -- js linter
	},
})
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
	},
	formatting = lsp_zero.cmp_format(),
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
})
