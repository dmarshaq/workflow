local config = function()
	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local lspconfig = require("lspconfig")

	-- enable keybinds only for when lsp server available
	local on_attach = function(client, bufnr)
        -- Disable diagnostics just for clangd
        if client.name == "clangd" then
            client.server_capabilities.publishDiagnostics = false
        end
        if client.name == "efm" then
            client.server_capabilities.publishDiagnostics = false
        end

		-- keybind options
		local opts = { noremap = true, silent = true, buffer = bufnr }

		-- set keybinds
		-- vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)

		vim.keymap.set("n", "<leader>fd", "<cmd>Lspsaga finder<CR>", opts) -- go to definition
		vim.keymap.set("n", "<leader>gD", "<cmd>Lspsaga goto_definition<CR>", opts) -- go to definition
		vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- peak definition
		vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
		vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
		vim.keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
		vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
		vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to prev diagnostic in buffer
		vim.keymap.set("n", "<leader>nd", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
		vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
		-- vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
	end

	local capabilities = cmp_nvim_lsp.default_capabilities()

	-- lua
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})

	-- c
	lspconfig.clangd.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})

	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	local gcc = require("efmls-configs.linters.gcc")
	local clang_format = require("efmls-configs.formatters.clang_format")

	-- configuring efm server
	lspconfig.efm.setup({
		filetypes = {
			"lua",
			"c",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				lua = { luacheck, stylua },
				c = { gcc, clang_format },
			},
		},
	})

	-- Format on Save
	-- local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})

	-- vim.api.nvim_create_autocmd("BufWritePost", {
	-- 	group = lsp_fmt_group,
	-- 	callback = function(args)
	-- 		local bufnr = args.buf
	-- 		local clients = vim.lsp.get_clients({ name = "efm", bufnr = bufnr })

	-- 		if vim.tbl_isempty(clients) then
	-- 			return
	-- 		end

	-- 		vim.lsp.buf.format({ name = "efm" })
	-- 	end,
	-- })
    vim.diagnostic.enable(false)
end

return {
	"neovim/nvim-lspconfig",
	config = config,
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
	},
}
