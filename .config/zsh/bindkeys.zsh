bindkey "^R" history-incremental-search-backward
bindkey "^F" fzf-cd-widget

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
