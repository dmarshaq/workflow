vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.fillchars = { eob = " " }

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.list = false
vim.opt.listchars = { space = '·'}


vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "C://Users/mrsho/AppData/Local/nvim-data/undo"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.wo.cursorline = true
vim.wo.cursorlineopt = "number"

vim.opt.updatetime = 50
vim.opt.scrolloff = 10

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
    vim.highlight.on_yank()
    end,
})

-- get contents of visual selection
-- handle unpack deprecation
table.unpack = table.unpack or unpack
function get_visual()
    local _, ls, cs = table.unpack(vim.fn.getpos("v"))
    local _, le, ce = table.unpack(vim.fn.getpos("."))
    return vim.api.nvim_buf_get_text(0, ls - 1, cs - 1, le - 1, ce, {})
end

vim.keymap.set("v", "<leader>r", function()
    local pattern = table.concat(get_visual())
    -- escape regex and line endings
    pattern = vim.fn.substitute(vim.fn.escape(pattern, "^$.*\\/~[]"), "\n", "\\n", "g")
    -- send parsed substitution command to command line
    vim.api.nvim_input("<Esc>:%s/" .. pattern .. "//<Left>")
end)
