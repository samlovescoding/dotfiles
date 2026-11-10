-- Personal Hyprland overrides.
--
-- Loaded last by ~/.config/hypr/hyprland.lua via require("overrides"),
-- so anything set here wins over the stock config.
-- ~/.config/hypr/overrides is a symlink to this directory; split things out
-- into sibling files and load them with require("overrides.<name>").

------------------
---- MONITORS ----
------------------

hl.monitor({
    output   = "desc:Acer Technologies XV275K P5 253200FD94HA1",
    mode     = "3840x2160@160",
    position = "0x0",
    scale    = 2,
})

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("wl-paste --watch cliphist store")
end)
