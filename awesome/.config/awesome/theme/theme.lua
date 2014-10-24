---------------------------
--  Max's awesome theme  --
---------------------------

theme = {}

theme.font          = "sans 8"

theme.bg_normal     = "#00000000"
theme.bg_focus      = "#ffffff2a"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#ffffff0e"
theme.bg_systray    = "#151815" -- can't use transparency, so fake it

theme.fg_normal     = "#ffffff"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff8d"

theme.border_width  = 0
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "/home/max/.config/awesome/theme/taglist/squarefw.png"
theme.taglist_squares_unsel = "/home/max/.config/awesome/theme/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/home/max/.config/awesome/theme/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/home/max/.config/awesome/theme/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/home/max/.config/awesome/theme/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/home/max/.config/awesome/theme/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/home/max/.config/awesome/theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/home/max/.config/awesome/theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/home/max/.config/awesome/theme/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/home/max/.config/awesome/theme/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/home/max/.config/awesome/theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/home/max/.config/awesome/theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/home/max/.config/awesome/theme/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/home/max/.config/awesome/theme/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/home/max/.config/awesome/theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/home/max/.config/awesome/theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/home/max/.config/awesome/theme/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/home/max/.config/awesome/theme/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/home/max/.config/awesome/theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/home/max/.config/awesome/theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/home/max/.config/awesome/theme/titlebar/maximized_focus_active.png"

theme.wallpaper = "/home/max/.config/awesome/theme/background.jpg"

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