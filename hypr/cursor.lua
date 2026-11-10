-- Cursor theme and size.
-- See https://wiki.hypr.land/configuring/core/environment-variables/

local theme = "macOS-BigSur"
local size  = 20

-- Picked up by apps launched after Hyprland starts.
hl.env("XCURSOR_THEME", theme)
hl.env("XCURSOR_SIZE", tostring(size))
hl.env("HYPRCURSOR_SIZE", tostring(size))

-- Env vars alone never touch a running session, so also apply the cursor
-- live on startup and every time the config reloads.
local function apply()
    hl.exec_cmd(string.format("hyprctl setcursor %s %d", theme, size))
end

hl.on("hyprland.start", apply)
hl.on("config.reloaded", apply)
