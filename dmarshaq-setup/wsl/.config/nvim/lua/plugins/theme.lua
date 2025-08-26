return {
    {
        "catppuccin/nvim",
        "kvrohit/rasmus.nvim",
        "p00f/alabaster.nvim",

        priority = 1000,
        lazy = false,
        config = function()
            vim.cmd([[colorscheme alabaster]])
        end,
    },
}
