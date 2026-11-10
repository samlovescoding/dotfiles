-- Look and feel: borders, gaps, rounding, opacity, blur, animations.
-- See https://wiki.hypr.land/configuring/core/config-options/

hl.config({
    general = {
        gaps_in  = 4,  -- gap between windows
        gaps_out = 8, -- gap between windows and screen edges

        border_size = 0, -- stock default is 2

        col = {
            active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        -- Resize windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 8,
        rounding_power = 2,

        -- Transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 0.65,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled  = true,
            size     = 8,
            passes   = 4,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})
