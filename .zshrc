source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/bindkeys.zsh
source ~/.config/zsh/colors.zsh
source ~/.config/zsh/history.zsh
source ~/.config/zsh/setopt.zsh
source ~/.config/zsh/exports.zsh
source ~/.config/zsh/prompt.zsh
source ~/.config/zsh/completion.zsh
source ~/.config/zsh/functions.zsh

# Antibody
source <(antibody init)
# Bundles 
antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure

# Autojump 
[ -f /etc/profile.d/autjump.zsh ] &&  source /etc/profile.d/autojump.zsh
[ -f /usr/share/autojump/autojump.zsh ] &&  source /usr/share/autojump/autojump.zsh
eval `dircolors ~/.config/dircolors`

