return {
	-- the colorscheme should be available when starting Neovim
	"alljokecake/naysayer-theme.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme naysayer]])
		-- make bg transparent
		vim.g.bg_transparent = false
		vim.keymap.set("n", "<leader>bg", function()
			if vim.g.bg_transparent then
				vim.cmd([[colorscheme naysayer]])
			else
				vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			end
			vim.g.bg_transparent = not vim.g.bg_transparent
		end)
	end,
}
