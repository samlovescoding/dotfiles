-- Web apps: sites opened in their own chromeless browser window.
-- Add a line and save; the launcher entry, icon and Hyper key follow.
--   name  shown in the app launcher
--   url   page to open
--   key   optional, bound as Hyper + key
--   icon  optional, image URL for sites Google has no favicon for (local ones)

return {
    { name = "Claude", url = "https://claude.ai/new", key = "A" },
    { name = "X",      url = "https://x.com",         key = "X" },

    -- Local services, served at <name>.local by Valet (`valet proxy`).
    { name = "qBittorrent", url = "http://qbittorrent.local", key = "R",
      icon = "http://qbittorrent.local/images/qbittorrent32.png" },
}
