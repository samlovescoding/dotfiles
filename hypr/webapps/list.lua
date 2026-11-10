-- Web apps: sites opened in their own chromeless browser window.
-- Add a line and save; the launcher entry, icon and Hyper key follow.
--   name  shown in the app launcher
--   url   page to open
--   key   optional, bound as Hyper + key

return {
    { name = "Claude", url = "https://claude.ai/new", key = "A" },
    { name = "X",      url = "https://x.com",         key = "X" },
}
