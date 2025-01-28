local wezterm = require 'wezterm'

return {
  -- Font settings
  font = wezterm.font_with_fallback({
    "JetBrains Mono", -- Primary font
    "Fira Code",      -- Fallback font
    "Noto Color Emoji" -- Emoji support
  }),
  font_size = 9.0,

  -- Color scheme
  color_scheme = "Dracula", -- You can replace this with your preferred color scheme
  --color_scheme = "Dark Ocean (terminal.sexy)",

  -- Window and tab settings
  hide_tab_bar_if_only_one_tab = true,
  window_background_opacity = 0.9,
  --default_prog = { "powershell.exe", "-NoLogo" }, --for use powershell
  default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe", "--login" }, --for use gitbash

  -- Key bindings
  keys = {
    {
      key = "t",
      mods = "CTRL",
      action = wezterm.action.SpawnTab("DefaultDomain")
    },
    {
      key = "w",
      mods = "CTRL",
      action = wezterm.action.CloseCurrentTab({ confirm = true })
    },
    {
      key = "h",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ActivatePaneDirection("Left")
    },
    {
      key = "l",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ActivatePaneDirection("Right")
    },
    {
      key = "j",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ActivatePaneDirection("Down")
    },
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ActivatePaneDirection("Up")
    },
    {
      key = "p",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SpawnCommandInNewTab({
        args = { "powershell.exe", "-NoLogo" }, --To switch to powershell
      }),
    },
    {
      key = "g",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SpawnCommandInNewTab({
        args = { "C:\\Program Files\\Git\\bin\\bash.exe", "--login" }, --To switch to gitbash again
      }),
    },
  },

  -- Padding inside the terminal
  window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 5,
  },

  -- Other settings
  enable_wayland = true, -- For Wayland users (set to false if on X11)
}
