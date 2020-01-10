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

# Antigen
source ${HOME}/.zsh/antigen.zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

antigen theme geometry-zsh/geometry

antigen apply

# Sources
source ${HOME}/.zsh/zsh_aliases.zsh
source ${HOME}/.zsh/zsh_functions.zsh

# Environment variables
export PATH=$PATH
