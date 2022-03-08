fpath=( $fpath "/home/miguel/.config/zsh/zfunctions" )

export HISTSIZE=100000
export SAVEHIST=100000

export PATH=$PATH:~/bin

# Setup terminal, and turn on colors
export TERM=screen-256color

# Less Settings
export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
# lesspipe and pygmentize installed
if type lesspipe.sh > /dev/null 2>&1; then  
    export LESSOPEN='| lesspipe.sh %s'
fi
if type pygmentize > /dev/null 2>&1; then  
    export LESSCOLORIZER='pygmentize'
fi


export PAGER='less'
export EDITOR='nvim'
export BROWSER='firefox'

export LD_LIBRARY_PATH='/usr/local/lib64'

# FZF
export FZF_DEFAULT_COMMAND=fzf


