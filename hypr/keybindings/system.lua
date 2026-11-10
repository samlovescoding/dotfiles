-- Session-level actions: exit, lock, screenshots.

-- Exit Hyprland (gracefully via hyprshutdown when it is installed)
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
