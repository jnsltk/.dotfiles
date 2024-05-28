local wezterm = require 'wezterm'
config = {
    color_scheme = 'Catppuccin Mocha',
    enable_tab_bar = false,
    font = wezterm.font 'JetBrains Mono NL',
    font_size = 14.0,
    window_decorations = 'RESIZE',
    window_background_opacity = 1,
    window_padding = {
    --     left = 10,
    --     right = 10,
    --     top = 15,
        bottom = 0,
    },
    -- macos_window_background_blur = 50,
    keys = {
        {
            key = 'n',
            mods = 'SHIFT|CTRL',
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

return config
