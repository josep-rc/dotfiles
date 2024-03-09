-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Tokyo Night Moon'
config.font_size = 15.0
config.window_close_confirmation = 'NeverPrompt'
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.cursor_blink_rate = 200
config.default_cursor_style = "BlinkingBlock"

config.window_padding = {
  left = 5,
  right = 0,
  top = 0,
  bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
