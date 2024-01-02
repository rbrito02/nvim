local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts, {desc = "Go to definition"})
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts, {desc = "Show hover information"})
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts, {desc = "Workspace symbol search"})
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts, {desc = "Open diagnostic float window"})
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts, {desc = "Go to next diagnostic"})
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts, {desc = "Go to previous diagnostic"})
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts, {desc = "Code actions"})
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts, {desc = "Find references"})
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts, {desc = "Rename symbol"})
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts, {desc = "Show signature help"})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'tsserver', 'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})

