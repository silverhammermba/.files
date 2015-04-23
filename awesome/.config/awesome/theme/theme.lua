---------------------------
--  Max's awesome theme  --
---------------------------

theme = {}

theme.font          = "DejaVu Sans Mono 10"

theme.wibox_height = 21

theme.bg_normal     = "png:.config/awesome/theme/bg_normal.png"
theme.bg_focus      = "png:.config/awesome/theme/bg_focus.png"
theme.bg_urgent     = "#ff0000" -- TODO make less ugly
theme.bg_minimize   = "#ffffff0e"
theme.bg_systray    = theme.bg_normal
theme.bg_cursor     = "#ff0000" -- since bg_focus is a PNG

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
theme.taglist_bg_focus      = "png:.config/awesome/theme/taglist/bg_focus.png"
theme.taglist_squares_sel   = ".config/awesome/theme/taglist/square_sel.png"
theme.taglist_squares_unsel = ".config/awesome/theme/taglist/square_unsel.png"

-- menu
theme.menu_bg_normal    = "#ffffff"
theme.menu_submenu_icon = ".config/awesome/theme/submenu.png"
theme.menu_height       = theme.wibox_height
theme.menu_width        = 200

theme.wallpaper = ".config/awesome/theme/background.jpg"

-- layout icons
theme.layout_uselesstile  = ".config/awesome/theme/layouts/tile.png"
theme.layout_uselessfairh = ".config/awesome/theme/layouts/fairh.png"
theme.layout_fairh        = ".config/awesome/theme/layouts/fairh.png"
theme.layout_fairv        = ".config/awesome/theme/layouts/fairv.png"
theme.layout_floating     = ".config/awesome/theme/layouts/floating.png"
theme.layout_magnifier    = ".config/awesome/theme/layouts/magnifier.png"
theme.layout_max          = ".config/awesome/theme/layouts/max.png"
theme.layout_fullscreen   = ".config/awesome/theme/layouts/fullscreen.png"
theme.layout_tilebottom   = ".config/awesome/theme/layouts/tilebottom.png"
theme.layout_tileleft     = ".config/awesome/theme/layouts/tileleft.png"
theme.layout_tile         = ".config/awesome/theme/layouts/tile.png"
theme.layout_tiletop      = ".config/awesome/theme/layouts/tiletop.png"
theme.layout_spiral       = ".config/awesome/theme/layouts/spiral.png"
theme.layout_dwindle      = ".config/awesome/theme/layouts/dwindle.png"

theme.awesome_icon = ".config/awesome/theme/awesome.png"

-- use default application icons
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
