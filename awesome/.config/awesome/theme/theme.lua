---------------------------
--  Max's awesome theme  --
---------------------------

theme = {}

theme.font          = "DejaVuSans 8"

theme.bg_normal     = "#e03f83"
theme.bg_focus      = "#6f3579"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#222222"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = 0
-- must be defined, even though they aren't used
theme.border_normal = "#000000"
theme.border_focus  = "#000000"
theme.border_marked = "#000000"

-- Display the taglist squares
theme.taglist_squares_sel   = "/home/max/.config/awesome/theme/taglist/squarefw.png"
theme.taglist_squares_unsel = "/home/max/.config/awesome/theme/taglist/squarew.png"

-- Variables set for theming the menu:
theme.menu_submenu_icon = "/home/max/.config/awesome/theme/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

theme.wallpaper = "/home/max/.config/awesome/theme/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = "/home/max/.config/awesome/theme/layouts/fairhw.png"
theme.layout_fairv = "/home/max/.config/awesome/theme/layouts/fairvw.png"
theme.layout_floating  = "/home/max/.config/awesome/theme/layouts/floatingw.png"
theme.layout_magnifier = "/home/max/.config/awesome/theme/layouts/magnifierw.png"
theme.layout_max = "/home/max/.config/awesome/theme/layouts/maxw.png"
theme.layout_fullscreen = "/home/max/.config/awesome/theme/layouts/fullscreenw.png"
theme.layout_tilebottom = "/home/max/.config/awesome/theme/layouts/tilebottomw.png"
theme.layout_tileleft   = "/home/max/.config/awesome/theme/layouts/tileleftw.png"
theme.layout_tile = "/home/max/.config/awesome/theme/layouts/tilew.png"
theme.layout_tiletop = "/home/max/.config/awesome/theme/layouts/tiletopw.png"
theme.layout_spiral  = "/home/max/.config/awesome/theme/layouts/spiralw.png"
theme.layout_dwindle = "/home/max/.config/awesome/theme/layouts/dwindlew.png"

theme.awesome_icon = "/home/max/.config/awesome/theme/awesome.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
