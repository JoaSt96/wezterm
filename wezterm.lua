local wezterm = require 'wezterm'
local config = {}

local mux = wezterm.mux

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold' })
config.color_scheme = 'Urple (Gogh)'
config.font_size = 16.0
config.window_background_opacity = 1.0
config.audible_bell = 'Disabled'
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.native_macos_fullscreen_mode = true
-- config.macos_window_background_blur = 20
-- config.window_background_opacity = 0.3


-- The art is a bit too bright and colorful to be useful as a backdrop

-- for text, so we're going to dim it down to 10% of its normal brightness



config.enable_scroll_bar = true

config.min_scroll_bar_height = '2cell'

config.colors = {
  scrollbar_thumb = 'transparent',
}

config.background = {
  {
    source = {
      File = wezterm.config_dir .. '/background.jpg',
    },
  },

}


return config
