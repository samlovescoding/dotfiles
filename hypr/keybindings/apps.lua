-- Launching programs.

local vars = require("overrides.keybindings.vars")
local superMod = vars.superMod
local hyperMod = vars.hyperMod

hl.bind(superMod .. " + space", hl.dsp.exec_cmd(vars.menu))

hl.bind(hyperMod .. " + T", hl.dsp.exec_cmd(vars.terminal))
hl.bind(hyperMod .. " + E", hl.dsp.exec_cmd(vars.fileManager))
hl.bind(hyperMod .. " + B", hl.dsp.exec_cmd(vars.browser))
