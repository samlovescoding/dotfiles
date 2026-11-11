-- Shared by every keybindings file:
--   local vars = require("overrides.keybindings.vars")
--
-- superMod: layout and window management.
-- hyperMod: quick app launching. Caps Lock held down; tapping it sends Escape.
--           keyd turns Caps Lock into Ctrl+Alt+Shift+Super (see ~/dotfiles/keyd).

return {
    superMod    = "SUPER",
    hyperMod    = "SUPER + CTRL + ALT + SHIFT",
    terminal    = "kitty",
    fileManager = "dolphin",
    browser     = "chromium",
    menu        = "wofi --show drun",
}
