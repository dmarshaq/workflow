return {
    {
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        "gmr458/cold.nvim",
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme cold]])
            -- make bg transparent
            vim.g.bg_transparent = false
            vim.keymap.set("n", "<leader>bg", function()
                if vim.g.bg_transparent then
                    vim.cmd([[colorscheme ]] .. vim.g.colors_name)
                else
                    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
                    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
                    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
                end
                vim.g.bg_transparent = not vim.g.bg_transparent
            end)
        end,
    },
    {
        "alljokecake/naysayer-theme.nvim",
        config = function ()
            require("naysayer").setup({
                variant = 'main',
                dark_variant = 'main',
                bold_vert_split = false,
                dim_nc_background = false,
                disable_background = true,
                disable_float_background = true,
                disable_italics = true,
            })
        end
    },
}
