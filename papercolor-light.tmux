#!/usr/bin/env bash

main() {

	## Colors
	navy='#005f87'
	white='#f5f5f5'
	black='#4d4d4c'
	pink='#d7005f'
	aqua='#3e999f'

	## Icons
	if [ "${BASH_VERSINFO[0]}" -lt 4 ]; then
		left_sep=''
		right_sep=''
	else
		left_sep=$'\ue0b2'
		right_sep=$'\ue0b0'
	fi

	tmux set-option -g status on
	tmux set-option -g status-left-length 100
	tmux set-option -g status-right-length 100
	tmux set-option -g status-bg "${navy}"
	tmux set-option -g pane-active-border-fg "${pink}"
	tmux set-option -g pane-border-fg "${black}"
	tmux set-option -g message-bg "${navy}"
	tmux set-option -g message-fg "${white}"
	tmux set-option -g message-command-bg "${navy}"
	tmux set-option -g message-command-fg "${white}"
	tmux set-option -g status-left "#[bg=${pink},fg=${white}] #S #[bg=${white},fg=${pink}]${right_sep} #[fg=${black},bg=${white}]#I #[bg=${navy},fg=${white}]${right_sep}"
	tmux set-option -g status-left-style "fg=${black},bg=${white}"
	tmux set-option -g status-right "${left_sep}#[bg=${white},fg=${black}] %Y-%m-%d %H:%M "
	tmux set-option -g status-right-style "fg=${white},bg=${navy}"
	tmux set-window-option -g window-status-activity-style "fg=${white},bg=${aqua}"
	tmux set-window-option -g window-status-bell-style ""
	tmux set-window-option -g window-status-separator ''
	tmux set-window-option -g window-status-format " #I #W #F"
	tmux set-window-option -g window-status-current-format "#[bg=${aqua},fg=${navy}]${right_sep}#[fg=${white},bold] #I #W #[fg=${aqua},bg=${navy},none]${right_sep}"
}

main

# vim: set filetype=bash
