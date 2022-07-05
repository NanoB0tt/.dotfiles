#!/usr/bin/env zsh


# +---------------------+
# |    CONFIGURATION    |
# +---------------------+

# +---- Navigation ----+
setopt AUTO_CD		# Go to folder path without using cd.
setopt CORRECT		# Spelling correction.

# +---- Aliases ----+
source ~/.config/aliases/aliases

# +---- History ----+
setopt HIST_SAVE_NO_DUPS	# Do not write a duplicate event

# +---- Completion ----+
source $ZDOTDIR/completion

# +---- Vi mode ----+
bindkey -v
export KEYTIMEOUT=1

# +---- neofetch ----+
neofetch

# +---- Plugins ----+

# Autosuggestions
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Syntax highlighting
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
