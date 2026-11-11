-- BEGIN AI PLAYGROUND ------------------------------------------------------
-- Dictation (Voxtype) and GPU release keys. Details: /mnt/ai/docs/notes/voxtype.md
--   Hyper + D  start/stop dictation (toggle). The text is typed at the cursor.
--   Hyper + C  cancel the current dictation (nothing is typed).
--   Hyper + G  free the GPU (/mnt/ai/scripts/gpu-free: unloads AI services,
--              restarts voxtype if it is idle but holds VRAM).
-- Hyper = Caps Lock held (keyd), see vars.lua.

local vars = require("overrides.keybindings.vars")
local hyperMod = vars.hyperMod

hl.bind(hyperMod .. " + D", hl.dsp.exec_cmd("voxtype record toggle"),     { description = "Dictation: start/stop" })
hl.bind(hyperMod .. " + C", hl.dsp.exec_cmd("voxtype record cancel"),     { description = "Dictation: cancel" })
hl.bind(hyperMod .. " + G", hl.dsp.exec_cmd("/mnt/ai/scripts/gpu-free"),  { description = "Free the GPU" })

-- Push-to-talk alternative (hold Hyper + D while speaking): set [hotkey] mode = "push_to_talk"
-- in ~/.config/voxtype/config.toml and replace the toggle bind above with these two.
-- Not the default: if Caps is let go before D, the release can be missed and recording keeps going.
-- hl.bind(hyperMod .. " + D", hl.dsp.exec_cmd("voxtype record start"))
-- hl.bind(hyperMod .. " + D", hl.dsp.exec_cmd("voxtype record stop"), { release = true })

-- Empty submap that Voxtype switches to while it types the text (pre_output_command /
-- post_output_command in ~/.config/voxtype/config.toml). While it is active no other
-- bind fires, so a Hyper/Super key that is still held cannot trigger a shortcut mid-typing.
-- F12 is an emergency way out if voxtype ever crashes while typing.
hl.define_submap("voxtype_suppress", function()
    hl.bind("F12", hl.dsp.submap("reset"), { description = "Leave voxtype_suppress submap" })
end)
-- END AI PLAYGROUND --------------------------------------------------------
