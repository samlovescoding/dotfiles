-- Hyper + key for each web app that has a key in webapps/list.lua.

local vars    = require("overrides.keybindings.vars")
local webapps = require("overrides.webapps.index")

for _, app in ipairs(webapps.apps) do
    if app.key then
        hl.bind(vars.hyperMod .. " + " .. app.key, function() webapps.launch(app.url) end)
    end
end
