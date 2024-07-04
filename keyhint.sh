#!/bin/sh
# "Change keyboard layout in" "~/.config/hypr/hyprland.conf" " " \

yad --width=530 --height=620 \
--center \
--fixed \
--title="Sway Keybindings" \
--no-buttons \
--list \
--column=Key: \
--column=Description: \
--column=Command: \
--timeout=60 \
--timeout-indicator=right \
"ESC" "close this app" "" "=ALT" "modkey" "(set mod Mod4)" \
#"+Shift+g" "G-hyprland" "implement G-Hyprland" \
"+enter" "Terminal" "(Terminator)" \
"+Spacebar" "Application Menu" "(wofi)" \
#"+d" "Full Launcher" "(wofi)" \
"+b" "" "Open Broswer" \
"+CTRL+f" "" "Open Files" \
"+q" "close focused app" "(kill)" \
#"+v" "clipboard manager" "(cliphist)" \
"+r" "Resize windows" "(resize)" \
"+Shift+c" "reload" \
+Shift+e exec $HOME/.config/sway/exit.sh
+Escape exec $lock_screen
+Left focus left
+Down focus down
+Up   focus up
+Right focus right
+k focus down
+j focus left
+l focus right
+semicolon focus up
+Shift+Left move left
+Shift+Down move down
+Shift+Up move up
+Shift+Right move right
+Shift+k     move left
+Shift+j     move down
+Shift+l     move up
+Shift+semicolon move right
Left resize shrink width 10px
Down resize grow height 10px
Up resize shrink height 10px
Right resize grow width 10px
h resize shrink width 10px
j resize grow height 10px
k resize shrink height 10px
l resize grow width 10px
Return mode "default"
Escape mode "default"
+r mode "resize"
+1 workspace $ws1
+2 workspace $ws2
+3 workspace $ws3
+4 workspace $ws4
+5 workspace $ws5
$mod+6                 workspace $ws6
$mod+7                 workspace $ws7
$mod+8                 workspace $ws8
$mod+9                 workspace $ws9
$mod+Shift+1           move container to workspace $ws1
$mod+Shift+2           move container to workspace $ws2
$mod+Shift+3           move container to workspace $ws3
$mod+Shift+4           move container to workspace $ws4
$mod+Shift+5           move container to workspace $ws5
$mod+Shift+6           move container to workspace $ws6
$mod+Shift+7           move container to workspace $ws7
$mod+Shift+8           move container to workspace $ws8
$mod+Shift+9           move container to workspace $ws9
$mod+h                 splith
$mod+v                 splitv
$mod+s                 layout stacking
$mod+w                 layout tabbed
$mod+e                 layout toggle split
$mod+f                 fullscreen
$mod+Shift+f           floating toggle
$mod+tab               focus mode_toggle
$mod+a                 focus parent
$mod+Shift+minus       move scratchpad
$mod+minus             scratchpad show
XF86AudioRaiseVolume   exec pactl set-sink-volume @DEFAULT_SINK@ +5%
XF86AudioLowerVolume   exec pactl set-sink-volume @DEFAULT_SINK@ -5%
XF86AudioMute          exec "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle; pkill -RTMIN+8 waybar"
XF86MonBrightnessDown  exec brightnessctl set 2-
XF86MonBrightnessUp    exec brightnessctl set +2
$mod+b                 exec firefox
ctrl+$mod+d            exec dolphin
$mod+z                 exec subl
$mod+return            exec $term
$mod+q                 kill
$mod+space             exec .config/rofi/launchers/launcher.sh
$mod+d                 exec .config/rofi/launchers/launcher.sh
$mod+Shift+h           exec /home/grnch/dmenu-hotkeys/bin/dmenu_hotkeys run --menu rofi --app i3
1                      exec 'grim -g "$(slurp)" ~/ps_$(date +"%Y%m%d%H%M%S").png', mode "default"
2                      exec 'grim ~/ps_$(date +"%Y%m%d%H%M%S").png', mode "default"
3                      exec 'grim -g "$(slurp)" - | wl-copy', mode "default"
4                      exec 'grim - | wl-copy', mode "default"
5                      exec 'grim -g "$(slurp)" - | swappy -f -', mode "default"
Return                 mode "default"
Escape                 mode "default"
$mod+Print             mode "default"
Print                  exec grim


"Print" "screenshot" "(grimblast)" \
#"Shift+Print" "screenshot region" "(grimblast)" \
#"+Print" "screenshot window" "(grimblast)" \
#"+Shift+e" "power-menu" "(wofi)" \
#"+Shift+c" "Change wallpaper" "(wpaperd)" \
#"+f" "Fullscreen" "Toggles to full screen" \
#"+Shift+f" "Fake fullscreen" "Behave full screen without full screen" \
#"+Shift+Spacebar" "Float" "Toggle windows to float" \
#"+p" "Dwindle effect" "pseudo" \
#"+Shift+p" "Dwindle effect" "toggle split" \
#"+i" "Calamares" "Install Garuda Hyprland" \

"" "" "     Window closed in 60 sec."\
