---------------------------
--  Max's awesome theme  --
---------------------------

theme = {}

theme.font = "DejaVuSans 8"

theme.wallpaper = ".config/awesome/theme/background.png"

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
theme.taglist_squares_sel   = ".config/awesome/theme/taglist/squares_sel.png"
theme.taglist_squares_unsel = ".config/awesome/theme/taglist/squares_unsel.png"

-- Variables set for theming the menu:
theme.awesome_icon      = ".config/awesome/theme/menu/awesome.png"
theme.menu_submenu_icon = ".config/awesome/theme/menu/submenu.png"
theme.menu_height       = 15
theme.menu_width        = 100

-- You can use your own layout icons like this:
theme.layout_fairh      = ".config/awesome/theme/layouts/fairh.png"
theme.layout_fairv      = ".config/awesome/theme/layouts/fairv.png"
theme.layout_floating   = ".config/awesome/theme/layouts/floating.png"
theme.layout_magnifier  = ".config/awesome/theme/layouts/magnifier.png"
theme.layout_max        = ".config/awesome/theme/layouts/max.png"
theme.layout_fullscreen = ".config/awesome/theme/layouts/fullscreen.png"
theme.layout_tilebottom = ".config/awesome/theme/layouts/tilebottom.png"
theme.layout_tileleft   = ".config/awesome/theme/layouts/tileleft.png"
theme.layout_tile       = ".config/awesome/theme/layouts/tile.png"
theme.layout_tiletop    = ".config/awesome/theme/layouts/tiletop.png"
theme.layout_spiral     = ".config/awesome/theme/layouts/spiral.png"
theme.layout_dwindle    = ".config/awesome/theme/layouts/dwindle.png"

-- default icon theme
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
