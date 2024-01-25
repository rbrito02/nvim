return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true

        -- empty setup using defaults
        require("nvim-tree").setup()

        -- OR setup with some options
        require("nvim-tree").setup({
            actions = {
                open_file = {
                    quit_on_open = true
                }
            },
            sort = {
                sorter = "case_sensitive"
            },
            view = {
                width = 30
            },
            renderer = {
                group_empty = true
            },
            filters = {
                dotfiles = false,
                git_ignored = false,
                custom = {".class"}
            }
        })
        -- auto close
        local function is_modified_buffer_open(buffers)
            for _, v in pairs(buffers) do
                if v.name:match("NvimTree_") == nil then
                    return true
                end
            end
            return false
        end

        vim.api.nvim_create_autocmd("BufEnter", {
            nested = true,
            callback = function()
                if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil and
                    is_modified_buffer_open(vim.fn.getbufinfo({
                        bufmodified = 1
                    })) == false then
                    vim.cmd("quit")
                end
            end
        })
    end

}
