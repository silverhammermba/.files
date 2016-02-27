---------------------------
--  Max's awesome theme  --
---------------------------

theme = {}

theme.font          = "DejaVu Sans Mono 10"

theme.wibox_height = 21

theme.bg_normal     = "png:/home/max/.config/awesome/theme/bg_normal.png"
theme.bg_focus      = "png:/home/max/.config/awesome/theme/bg_focus.png"
theme.bg_urgent     = "#ff0000" -- TODO make less ugly
theme.bg_minimize   = "#ffffff0e"
theme.bg_systray    = theme.bg_normal
theme.bg_cursor     = "#000000" -- since bg_focus is a PNG

theme.fg_normal     = "#000000"
theme.fg_focus      = "#000000"
theme.fg_urgent     = "#000000"
theme.fg_minimize   = "#ffffff8d"

theme.useless_gap_width = 5
theme.border_width  = 0
-- unused
theme.border_normal = "#000000"
theme.border_focus  = "#000000"
theme.border_marked = "#000000"

-- taglist
theme.taglist_bg_focus      = "png:/home/max/.config/awesome/theme/taglist/bg_focus.png"
theme.taglist_squares_sel   = "/home/max/.config/awesome/theme/taglist/square_sel.png"
theme.taglist_squares_unsel = "/home/max/.config/awesome/theme/taglist/square_unsel.png"

-- menu
theme.menu_bg_normal    = "#ffffff"
theme.menu_submenu_icon = "/home/max/.config/awesome/theme/submenu.png"
theme.menu_height       = theme.wibox_height
theme.menu_width        = 200

theme.wallpaper = "/home/max/.config/awesome/theme/background.jpg"

-- layout icons
theme.layout_uselesstile  = "/home/max/.config/awesome/theme/layouts/tile.png"
theme.layout_uselessfairh = "/home/max/.config/awesome/theme/layouts/fairh.png"
theme.layout_fairh        = "/home/max/.config/awesome/theme/layouts/fairh.png"
theme.layout_fairv        = "/home/max/.config/awesome/theme/layouts/fairv.png"
theme.layout_floating     = "/home/max/.config/awesome/theme/layouts/floating.png"
theme.layout_magnifier    = "/home/max/.config/awesome/theme/layouts/magnifier.png"
theme.layout_max          = "/home/max/.config/awesome/theme/layouts/max.png"
theme.layout_fullscreen   = "/home/max/.config/awesome/theme/layouts/fullscreen.png"
theme.layout_tilebottom   = "/home/max/.config/awesome/theme/layouts/tilebottom.png"
theme.layout_tileleft     = "/home/max/.config/awesome/theme/layouts/tileleft.png"
theme.layout_tile         = "/home/max/.config/awesome/theme/layouts/tile.png"
theme.layout_tiletop      = "/home/max/.config/awesome/theme/layouts/tiletop.png"
theme.layout_spiral       = "/home/max/.config/awesome/theme/layouts/spiral.png"
theme.layout_dwindle      = "/home/max/.config/awesome/theme/layouts/dwindle.png"

theme.awesome_icon = "/home/max/.config/awesome/theme/awesome.png"

-- use default application icons
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
