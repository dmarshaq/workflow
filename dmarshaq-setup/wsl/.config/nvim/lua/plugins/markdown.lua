return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        config = function()
            -- Define a Vimscript function
            vim.cmd([[
            function! OpenMarkdownPreviewInNewWindow(url)
            call jobstart(['firefox', '-new-window', a:url])
            endfunction
            ]])

            -- Tell markdown-preview.nvim to use it
            vim.g.mkdp_browserfunc = 'OpenMarkdownPreviewInNewWindow'
        end,
    },
}
