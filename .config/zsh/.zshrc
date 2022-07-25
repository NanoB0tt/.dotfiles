#!/usr/bin/env zsh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# +---- things ----+
#neofetch
#eval "$(starship init zsh)"
export LANG=es_AR.UTF-8

# +--- bindings ---+
bindkey -s ^f "~/./.local/bin/tmux-sessionizer \n"

# +---- Plugins ----+

# Autosuggestions
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Syntax highlighting
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh prompt
source $ZDOTDIR/plugins/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
