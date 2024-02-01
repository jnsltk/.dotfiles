local wezterm = require 'wezterm'
config = {
    enable_tab_bar = false,
    font_size = 16.0,
    window_decorations = 'RESIZE',
    window_background_opacity = 0.90,
    window_padding = {
        left = 15, 
        right = 15,
        top = 15,
        bottom = 15,
    },
    macos_window_background_blur = 50,
    keys = {
        {
            key = 'f',
            mods = 'CTRL',
            action = wezterm.action.ToggleFullScreen,
        },
    },
    mouse_bindings = {
        -- Ctrl-click will open the link under the mouse cursor
        {
            event = { Up = { streak = 1, button = 'Left' } },
            mods = 'CTRL',
            action = wezterm.action.OpenLinkAtMouseCursor,
        },
    },
}

config.font = wezterm.font 'JetBrains Mono NL'

return config
