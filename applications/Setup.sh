cat <<EOF >~/.local/share/applications/Setup.desktop
[Desktop Entry]
Version=1.0
Name=Setup
Comment=Setup Controls
Exec=alacritty --config-file /home/$USER/.local/share/setup/defaults/alacritty/pane.toml --class=Setup --title=Setup -e omakub
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/setup/applications/icons/Setup.png
Categories=GTK;
StartupNotify=false
EOF
