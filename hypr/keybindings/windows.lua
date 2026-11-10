-- Acting on the active window: close, float, layout, move and resize.

local vars = require("overrides.keybindings.vars")
local superMod = vars.superMod
local hyperMod = vars.hyperMod

hl.bind(superMod .. " + Q", hl.dsp.window.close())
hl.bind(hyperMod .. " + Q", hl.dsp.window.close())
hl.bind(superMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(superMod .. " + P", hl.dsp.window.pseudo())
hl.bind(superMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move/resize windows with superMod + LMB/RMB and dragging
hl.bind(superMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(superMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
