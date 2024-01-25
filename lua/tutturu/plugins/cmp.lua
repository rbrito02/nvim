return {
    config = function()

        local cmp = require("cmp")
        local cmp_select = {
            behavior = cmp.SelectBehavior.Select
        }

        cmp.setup({
            sources = {{
                name = "path"
            }, {
                name = "nvim_lsp"
            }, {
                name = "nvim_lua"
            }},
            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
                ["<Tab>"] = cmp.mapping.confirm({
                    select = true
                }),
                ["<C-Space>"] = cmp.mapping.complete()
            })
        })
    end
}
