-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.front_end = "OpenGL"
config.max_fps = 144
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_rate = 500
config.term = "xterm-256color" -- Set the terminal type

config.keys = {
	-- Vertical split
	{
		key = "V",
		mods = "CTRL",
		action = act.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	-- Horizontal split
	{
		key = "H",
		mods = "CTRL",
		action = act.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	-- Kill split
	{
		key = "q",
		mods = "CTRL",
		action = act.CloseCurrentPane({ confirm = true }),
	},
	-- Move to next split
	{
		key = "n",
		mods = "CTRL",
		action = act.ActivatePaneDirection("Next"),
	},
}

config.color_scheme = "Batman"

config.window_background_opacity = 0.9
config.prefer_egl = true
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"

-- Window Frame
config.window_frame = {
	-- The font used in the tab bar.
	font = wezterm.font({ family = "Roboto Mono" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 10.0,
}

config.font = wezterm.font("JetBrains Mono")

-- Tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.default_prog = { "powershell.exe", "-NoLogo" }
config.initial_cols = 80

-- and finally, return the configuration to wezterm
return config
