---------------------------
--  Max's awesome theme  --
---------------------------

theme = {}
theme.theme_dir = awful.util.getdir("config") .. "/themes/max"
theme.font          = "sans 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "0"
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = theme.theme_dir .. "/taglist/squarefz.png"
theme.taglist_squares_unsel = theme.theme_dir .. "/taglist/squarez.png"

theme.tasklist_floating_icon = theme.theme_dir .. "/tasklist/floating.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.theme_dir .. "/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = theme.theme_dir .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme.theme_dir .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.theme_dir .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme.theme_dir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.theme_dir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme.theme_dir .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.theme_dir .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme.theme_dir .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.theme_dir .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme.theme_dir .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.theme_dir .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme.theme_dir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.theme_dir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme.theme_dir .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.theme_dir .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.theme_dir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.theme_dir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme.theme_dir .. "/titlebar/maximized_focus_active.png"

-- Wallpaper command
theme.wallpaper_cmd = { "sh /home/max/.fehbg" }

-- Layout icons
theme.layout_fairh = theme.theme_dir .. "/layouts/fairh.png"
theme.layout_fairv = theme.theme_dir .. "/layouts/fairv.png"
theme.layout_floating  = theme.theme_dir .. "/layouts/floating.png"
theme.layout_magnifier = theme.theme_dir .. "/layouts/magnifier.png"
theme.layout_max = theme.theme_dir .. "/layouts/max.png"
theme.layout_fullscreen = theme.theme_dir .. "/layouts/fullscreen.png"
theme.layout_tilebottom = theme.theme_dir .. "/layouts/tilebottom.png"
theme.layout_tileleft   = theme.theme_dir .. "/layouts/tileleft.png"
theme.layout_tile = theme.theme_dir .. "/layouts/tile.png"
theme.layout_tiletop = theme.theme_dir .. "/layouts/tiletop.png"
theme.layout_spiral  = theme.theme_dir .. "/layouts/spiral.png"
theme.layout_dwindle = theme.theme_dir .. "/layouts/dwindle.png"

theme.awesome_icon = theme.theme_dir .. "/awesome.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
