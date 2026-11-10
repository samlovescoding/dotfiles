-- Web app engine: launch-or-focus, plus keeping launcher entries in sync
-- with list.lua. Keybindings are in keybindings/webapps.lua.

local M = {}

local browser = "chromium"
local bin     = os.getenv("HOME") .. "/dotfiles/bin"

M.apps = require("overrides.webapps.list")

local function shell_quote(s)
    return "'" .. s:gsub("'", "'\\''") .. "'"
end

-- Window class Chromium gives an --app window, e.g.
-- https://claude.ai/new -> chrome-claude.ai__new-Default
function M.window_class(url)
    local host, path = url:match("^%a[%w+.-]*://([^/?#]+)([^?#]*)")
    return "chrome-" .. host .. "_" .. path:gsub("/", "_"):gsub("^$", "_") .. "-Default"
end

-- Focus the web app's window if it is open, otherwise open it.
function M.launch(url)
    local class = M.window_class(url)
    for _, w in ipairs(hl.get_windows()) do
        if w.initial_class == class then
            hl.dispatch(hl.dsp.focus({ window = w }))
            return
        end
    end
    hl.exec_cmd(browser .. " --app=" .. shell_quote(url))
end

-- Write launcher entries + icons for every app, drop ones no longer listed.
local function sync()
    local args = {}
    for _, app in ipairs(M.apps) do
        args[#args + 1] = shell_quote(app.name .. "|" .. app.url .. "|" .. M.window_class(app.url))
    end
    hl.exec_cmd(bin .. "/webapp-sync " .. table.concat(args, " "))
end

hl.on("hyprland.start", sync)
hl.on("config.reloaded", sync)

return M
