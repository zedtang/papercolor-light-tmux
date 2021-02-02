#!/usr/bin/env bash

main() {

    # Colors
    darkgray='#585858'
    white='#e4e4e4'
    navy='#005f87'
    aqua='#0087af'

    # Icons
    left_sep=''
    right_sep=''
    left_sep_thin=''
    right_sep_thin=''

    tmux set-option -g status on
    tmux set-option -g status-left-length 100
    tmux set-option -g status-right-length 100
    tmux set-option -g status-bg "${navy}"
    tmux set-option -g status-fg "${white}"
    tmux set-option -g pane-border-style "fg=${aqua}"
    tmux set-option -g pane-active-border-style "fg=${white}"
    tmux set-option -g mode-style "fg=${white},bg=${aqua}"
    tmux set-option -g message-style "fg=${white},bg=${aqua}"
    tmux set-option -g message-command-style "fg=${white},bg=${aqua}"
    tmux set-option -g status-left "#[bg=${white},fg=${darkgray}] #S #[bg=${navy},fg=${white}]${right_sep}"
    tmux set-option -g status-right "#[bg=${navy},fg=${aqua}]${left_sep}#[bg=${aqua},fg=${white}] %H:%M ${right_sep_thin} %m/%d/%Y #[bg=${aqua},fg=${white}]${left_sep}#[bg=${white},fg=${darkgray}] #h "
    tmux set-window-option -g window-status-format "#[bg=${navy},fg=${white}] #I ${left_sep_thin}#[bg=${navy},fg=${white}] #W #F "
    tmux set-window-option -g window-status-current-format "#[bg=${aqua},fg=${navy},bold]${right_sep}#[bg=${aqua},fg=${white}] #I ${left_sep_thin}#[bg=${aqua},fg=${white}] #W #F #[bg=${navy},fg=${aqua},bold]${right_sep}"
}

main

# vim: set filetype=bash
