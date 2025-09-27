return {
    "hrsh7th/nvim-cmp",
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        require("luasnip/loaders/from_vscode").lazy_load()

        vim.opt.completeopt = "menu,menuone,noselect"

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
                { name = "latex_symbols" }, -- new support for latex symbols.
            }),
            formatting = {
                format = lspkind.cmp_format({
                    maxwidth = 50,
                    ellipsis_char = "...",
                }),
            },
        })

        -- Optional: only enable latex_symbols inside Markdown
        cmp.setup.filetype("markdown", {
            sources = cmp.config.sources({
                { name = "latex_symbols" },
                { name = "buffer" },
                { name = "path" },
                { name = "luasnip" },
            }),
        })
    end,
    dependencies = {
        "onsails/lspkind.nvim",
        {
            "L3MON4D3/LuaSnip",
            version = "2.*",
        },
        "kdheepak/cmp-latex-symbols", -- install plugin for latex support.
    },
}
