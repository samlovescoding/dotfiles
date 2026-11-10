-- Moving focus between windows.

local vars = require("overrides.keybindings.vars")
local superMod = vars.superMod

hl.bind(superMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(superMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(superMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(superMod .. " + down",  hl.dsp.focus({ direction = "down" }))
