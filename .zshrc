

autoload -U colors && colors
bindkey -e

# Load version control info for git branch
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %b'
setopt PROMPT_SUBST


PS1="%{$fg[magenta]%}%~%{$fg[red]%}\${vcs_info_msg_0_} %{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vi='nvim'
alias c='clear'

# Basic auto/tab complete:

autoload -U compinit && compinit
autoload -U colors && colors
zmodload zsh/complist

_comp_options+=(globdots)		# Include hidden files.

# Load zsh-syntax-highlighting; should be last.

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh




export EDITOR="nvim"
export MANPAGER="nvim +Man!"
MAILSYNC_MUTE=1

eval "$(zoxide init zsh)"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.config/scripts:$PATH"


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
