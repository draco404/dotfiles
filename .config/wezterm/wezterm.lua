-- Importing
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Styles
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}

-- Fonts
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 16

-- Theme
config.color_scheme = "Dracula"

config.window_background_opacity = 0.8
return config
