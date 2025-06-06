#!/usr/bin/env bash

# Catppuccin colors for Tmux
# Modified statusline theme from TokyoNight from https://github.com/folke/tokyonight.nvim
#
# Catppuccin colors (Macchiato flavour)
# COLOR0 "#494d64"
# COLOR1 "#ed8796"
# COLOR2 "#a6da95"
# COLOR3 "#eed49f"
# COLOR4 "#8aadf4"
# COLOR5 "#f5bde6"
# COLOR6 "#8bd5ca"
# COLOR7 "#a5adcb"
# BG "#24273a"
# FG "#cad3f5"
# HL "#303347"

set -g @ACCENT1 "#8aadf4"
set -g @ACCENT2 "#eed49f"
set -g @HL      "#303347"
set -g @BG      "#24273a"
set -g @BGVAR   "#24273a"

set -g mode-style "fg=#{@ACCENT1},bg=#{@HL}"

set -g message-style "fg=#{@ACCENT1},bg=#{@HL}"
set -g message-command-style "fg=#{@ACCENT1},bg=#{@HL}"

set -g pane-border-style "fg=#{@HL}"
set -g pane-active-border-style "fg=#{@ACCENT1}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#{@ACCENT1},bg=#{@BG}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#{@BGVAR},bg=#{@ACCENT1},bold] #S #[fg=#{@ACCENT1},bg=#{@BG},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#{@BG},bg=#{@BG},nobold,nounderscore,noitalics]#[fg=#{@ACCENT1},bg=#{@BG}] #{prefix_highlight} #[fg=#{@HL},bg=#{@BG},nobold,nounderscore,noitalics]#[fg=#{@ACCENT1},bg=#{@HL}] %Y-%m-%d  %I:%M %p #[fg=#{@ACCENT1},bg=#{@HL},nobold,nounderscore,noitalics]#[fg=#{@BGVAR},bg=#{@ACCENT1},bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#{@BG},bg=#{@BG},nobold,nounderscore,noitalics]#[fg=#{@ACCENT1},bg=#{@BG}] #{prefix_highlight} #[fg=#{@HL},bg=#{@BG},nobold,nounderscore,noitalics]#[fg=#{@ACCENT1},bg=#{@HL}] %Y-%m-%d  %H:%M #[fg=#{@ACCENT1},bg=#{@HL},nobold,nounderscore,noitalics]#[fg=#{@BGVAR},bg=#{@ACCENT1},bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#a9b1d6,bg=#{@BG}"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a9b1d6,bg=#{@BG}"
setw -g window-status-format "#[fg=#{@BG},bg=#{@BG},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#{@BG},bg=#{@BG},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#{@BG},bg=#{@HL},nobold,nounderscore,noitalics]#[fg=#{@ACCENT1},bg=#{@HL},bold] #I  #W #F #[fg=#{@HL},bg=#{@BG},nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#{@ACCENT2}]#[bg=#{@BG}]#[fg=#{@BG}]#[bg=#{@ACCENT2}]"
set -g @prefix_highlight_output_suffix ""
