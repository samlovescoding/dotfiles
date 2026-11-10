-- Switching workspaces and sending windows to them.

local vars = require("overrides.keybindings.vars")
local superMod = vars.superMod
local hyperMod = vars.hyperMod

-- Switch workspaces with superMod + [0-9]
-- Move active window to a workspace with superMod + SHIFT + [0-9]
-- hyperMod + [0-9] also switches. There is no hyperMod + SHIFT: Hyper already
-- includes Shift, so the two are the same key combination.
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(superMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(superMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    hl.bind(hyperMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
end

-- Special workspace (scratchpad)
hl.bind(superMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(superMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with superMod + scroll
hl.bind(superMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(superMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
