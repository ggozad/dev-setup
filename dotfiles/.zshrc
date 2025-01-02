
export EDITOR='code --wait'
# Basics
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/homebrew/opt/postgresql@16/bin:/opt/homebrew/opt/ruby/bin:~/.gem/ruby/3.3.0/bin:$PATH

# Completions
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

source <(kubectl completion zsh)

# fzf

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# z
  . /opt/homebrew/etc/profile.d/z.sh

# ngrok
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi

# terraform autocomplete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# User configuration
source $HOME/.zshrc.local
source $HOME/.aliases

# Created by `pipx` on 2024-02-12 08:36:32
export PATH="$PATH:/Users/ggozad/.local/bin"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.oh-my-posh.json)"
fi
