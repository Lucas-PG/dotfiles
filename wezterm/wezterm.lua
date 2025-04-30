-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Frappe"
config.colors = {
	background = "#000000",
	foreground = "#ffffff",
}

-- Font
config.font = wezterm.font("JetBrains Mono NL")
config.font_size = 15

-- General
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.native_macos_fullscreen_mode = true

config.keys = {
	{ key = "f", mods = "CTRL|CMD", action = wezterm.action.ToggleFullScreen },
}

return config
