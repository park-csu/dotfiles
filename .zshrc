# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt correct_all
setopt auto_list
setopt auto_menu
setopt always_to_end

zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:::::' completer _expand _complete _ignored _approximate

# Sources
source ${HOME}/.zsh/zsh_aliases.zsh
source ${HOME}/.zsh/zsh_functions.zsh

# Environment variables
# Empty cuz why not?

# Prompt
setopt PROMPT_SUBST

autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats 'on branch %b'

NEWLINE=$'\n'
PROMPT='%F{140}%n%f in %F{110}%~%f ${vcs_info_msg_0_}${NEWLINE}-> '

# Home/End malfunction
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
