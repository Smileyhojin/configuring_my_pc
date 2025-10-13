local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

-- config.default_domain = 'WSL:Ubuntu'
-- config.front_end = "OpenGL"
config.max_fps = 165
config.animation_fps = 165
config.cursor_blink_rate = 500
config.term = "xterm-256color"

config.font = wezterm.font("CaskaydiaCove NF")
config.cell_width = 0.9

config.window_background_opacity = 0.95
config.prefer_egl = true
config.font_size = 16.0

config.window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 10,
}

-- tabs
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false

-- color scheme
config.color_scheme = 'Tokyo Night Storm'

-- keymaps
config.keys = {
    {
        key = "s",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitPane({
            direction = "Right",
            size = { Percent = 50 },
        }),
    },
    {
        key = "v",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitVertical({}),
    },
    { key = "0", mods = "CTRL", action = act.PaneSelect },
}

config.window_decorations = "NONE | RESIZE"
config.initial_rows = 40
config.initial_cols = 120

return config
