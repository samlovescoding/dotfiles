-- Chromium-only remaps: Super + key is sent to the browser as Ctrl + key.
-- Applies to Chromium windows and to web app windows (which are Chromium);
-- in any other app these keys do nothing.

local vars = require("overrides.keybindings.vars")
local superMod = vars.superMod

local function is_chromium(w)
    return w ~= nil and (w.class == "chromium" or w.class:match("^chrome%-") ~= nil)
end

-- Super + <key> -> Ctrl + <key>
local remaps = {
    "W", -- close tab
}

for _, key in ipairs(remaps) do
    hl.bind(superMod .. " + " .. key, function()
        local w = hl.get_active_window()
        if is_chromium(w) then
            hl.dispatch(hl.dsp.send_shortcut({ mods = "CTRL", key = key, window = w }))
        end
    end)
end
