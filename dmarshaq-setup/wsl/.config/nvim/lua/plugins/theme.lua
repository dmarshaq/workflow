return {
    {
        "kvrohit/rasmus.nvim",
        lazy = false,
    },
    {
        "p00f/alabaster.nvim",
        lazy = false,
    },
    { 
        "catppuccin/nvim",
        priority = 1000, -- Load first.
        lazy = false,    -- Load immediately.
        config = function()
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
