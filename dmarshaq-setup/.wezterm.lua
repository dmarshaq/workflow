-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.front_end = "OpenGL"
config.max_fps = 255
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 120
config.cursor_blink_rate = 700
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
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
	-- Quit split
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
	-- Toggle background
	{
		key = "B",
		mods = "CTRL",
		action = act.EmitEvent("toggle-opacity"),
	},
	-- Run make command
	{
		key = "m",
		mods = "CTRL",
		action = act.Multiple({
			act.SendString("make"),
			act.SendKey({ key = "Enter" }),
		}),
	},
}

config.color_scheme = "Black Metal (Marduk) (base16)"

-- Background transparency
local opacity = 0.6
config.window_background_opacity = opacity

-- Toggle opacity function
wezterm.on("toggle-opacity", function(window)
	local overrides = window:get_config_overrides() or {}
	if not overrides.window_background_opacity then
		-- if no override is setup, override the default opacity value with 1.0
		overrides.window_background_opacity = 1.0
	else
		-- if there is an override, make it nil so the opacity goes back to the default
		overrides.window_background_opacity = nil
	end
	window:set_config_overrides(overrides)
end)

config.prefer_egl = true
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"
config.adjust_window_size_when_changing_font_size = false

-- Window Frame
config.window_frame = {
	-- The font used in the tab bar.
	font = wezterm.font({ family = "Roboto Mono" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 10.0,
}

config.font = wezterm.font({
	family = "Iosevka Term",
	stretch = "Normal",
	weight = "Regular",
})
config.font_size = 11.0

-- Tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.default_prog = { "powershell.exe", "-NoLogo" }
config.initial_cols = 80

-- and finally, return the configuration to wezterm
return config
