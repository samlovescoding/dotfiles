-- Processes launched when Hyprland starts.
-- See https://wiki.hypr.land/configuring/core/autostart/

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("wl-paste --watch cliphist store")
end)
