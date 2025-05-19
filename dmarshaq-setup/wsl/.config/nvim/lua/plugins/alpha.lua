return {
    "goolord/alpha-nvim",
    dependencies = {
        "echasnovski/mini.icons",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[⠀ ⠀⠀ ⠀⠀⠀⠀⠀⠀⠀ ⣀⣠⣤⣶⣶⣿⣿⣿⣿⣿⣿⣶⣶⣤⣄⣀ ⠀⠀⠀⠀⠀⠀⠀ ⠀⠀ ⠀]],
            [[⠀ ⠀⠀ ⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⡿⠿⠟⠛⠛⠛⠛⠻⠿⢿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀ ⠀⠀ ⠀]],
            [[⠀ ⠀⠀ ⠀⠀⣠⣾⣿⣿⡿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⢿⣿⣿⣷⣄⠀⠀ ⠀⠀ ⠀]],
            [[⠀ ⠀⠀ ⣠⣾⣿⣿⠟⠉⠀ ⠀⠀⠀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀ ⠀⠉⠻⣿⣿⣷⣄ ⠀⠀ ⠀]],
            [[⠀ ⠀⣰⣿⣿⣿⡿⠃⠀⠀⠀ ⠀⠀⠀⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠘⢿⣿⣿⣷⣄⠀ ⠀]],
            [[⠀ ⣸⣿⣿⣿⡟⠀⠀⠀⠀⠀ ⠀⠀⠀⠉⠉⠙⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⢻⣿⣿⣿⣇ ⠀]],
            [[ ⢠⣿⣿⣿⡿ ⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⡆⠀⠀⠀⠀⠀ ⠀⠀⠀⠀ ⠀⢿⣿⣿⣿⡆ ]],
            [[ ⣼⣿⣿⣿⠇ ⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣧ ]],
            [[ ⣿⣿⣿⣿⠀ ⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀ ⣿⣿⣿⣿ ]],
            [[ ⣿⣿⣿⣿⠀ ⠀⠀⠀⠀⠀ ⠀⠀⠀⣴⣿⣿⣿⡿⠛⣿⣿⣿⣧⠀⠀⠀ ⠀⠀⠀⠀⠀⠀ ⣿⣿⣿⣿ ]],
            [[ ⢻⣿⣿⣿⡆ ⠀⠀⠀⠀⠀ ⠀⢀⣼⣿⣿⣿⡟⠁ ⠹⣿⣿⣿⣇⠀⠀ ⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⡟ ]],
            [[ ⠘⣿⣿⣿⣷ ⠀⠀⠀⠀⠀ ⢀⣾⣿⣿⣿⠏⠀⠀⠀⠀⢻⣿⣿⣿⡄⠀ ⠀  ⠀⠀⠀⣾⣿⣿⣿⠃ ]],
            [[⠀ ⢹⣿⣿⣿⣧⡀⠀⠀⠀⢠⣾⣿⣿⣿⡟ ⠀⠀⠀⠀⠀ ⣿⣿⣿⣿⣶⣿⣿⣿⡆⠀⠀⣼⣿⣿⣿⡏ ⠀]],
            [[⠀ ⠀⠹⣿⣿⣿⣷⡄⠀⣠⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⠿⠟⠛⢠⣾⣿⣿⣿⠏⠀ ⠀]],
            [[⠀ ⠀⠀ ⠙⢿⣿⣿⣦⣀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀ ⠀⣀⣴⣿⣿⡿⠋ ⠀⠀ ⠀]],
            [[⠀ ⠀⠀ ⠀ ⠙⢿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⡿⠋⠀⠀ ⠀⠀ ⠀]],
            [[⠀ ⠀⠀ ⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣷⣶⣦⣤⣤⣤⣤⣴⣶⣾⣿⣿⣿⣿⡿⠟⠋⠀⠀⠀⠀ ⠀⠀ ⠀]],
            [[⠀ ⠀⠀ ⠀⠀⠀⠀⠀⠀⠀ ⠈⠙⠛⠿⠿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠋⠉ ⠀⠀⠀⠀⠀⠀⠀ ⠀⠀ ⠀]],
        }
        dashboard.section.buttons.val = {

            dashboard.button("n", "  > New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("e", "  > Explore files", ":Explore<CR>"),
            dashboard.button("f", "󰈞  > Find file", ":Telescope find_files<CR>"),
            dashboard.button("g", "󰈞  > Live grep", ":Telescope live_grep<CR>"),
            dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
        }

        dashboard.section.header.opts.hl = "GruvboxBlue"
        dashboard.section.buttons.opts.hl = "GruvboxGreen"
        dashboard.opts.opts.noautocmd = true

        alpha.setup(dashboard.opts)
    end,
}
