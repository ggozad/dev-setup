source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  . /usr/local/etc/profile.d/z.sh

# User configuration
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.config/broot/launcher/bash/br
. /usr/local/etc/profile.d/z.sh

source $HOME/.zshrc.local
source $HOME/.aliases
