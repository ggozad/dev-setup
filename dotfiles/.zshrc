source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  . /opt/homebrew/etc/profile.d/z.sh

# User configuration
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.config/broot/launcher/bash/br

source $HOME/.zshrc.local
source $HOME/.aliases
