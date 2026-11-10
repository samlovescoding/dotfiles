-- Personal Hyprland overrides.
--
-- Loaded last by ~/.config/hypr/hyprland.lua via require("overrides.index"),
-- so anything set here wins over the stock config.
-- ~/.config/hypr/overrides is a symlink to this directory.

require("overrides.monitors")
require("overrides.autostart")
require("overrides.keybindings.index")
require("overrides.applications")
require("overrides.mouse")
require("overrides.keyboard")
require("overrides.cursor")
