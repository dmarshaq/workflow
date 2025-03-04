return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"andrew-george/telescope-themes",
	},
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("themes")
		vim.keymap.set("n", "<leader>tt", ":Telescope themes<CR>", { noremap = true, silent = true, desc = "Theme Switcher" })

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>tg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>tb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "Telescope help tags" })
	end,
}
