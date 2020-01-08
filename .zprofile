#exports XDG_CONFIG_HOME for bspwm to work
export XDG_CONFIG_HOME="$HOME/.config"
# starts i3 on user login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
