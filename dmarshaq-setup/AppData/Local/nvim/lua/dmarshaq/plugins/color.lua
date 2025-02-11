return {
	-- the colorscheme should be available when starting Neovim
	-- "alljokecake/naysayer-theme.nvim",
	"gmr458/cold.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme cold]])
		-- make bg transparent
		vim.g.bg_transparent = false
		vim.keymap.set("n", "<leader>bg", function()
			if vim.g.bg_transparent then
				vim.cmd([[colorscheme cold]])
			else
				vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
				vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
			end
			vim.g.bg_transparent = not vim.g.bg_transparent
		end)
	end,
}
