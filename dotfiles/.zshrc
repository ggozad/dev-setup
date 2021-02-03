# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="spaceship"
ZSH_THEME="lambda-pure"
PURE_NODE_ENABLED=0
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  . /usr/local/etc/profile.d/z.sh
# User configuration
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH="$PATH:$HOME/.yarn/bin"
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/python@3.9/libexec/bin:$PATH

export CSC_NAME="Crypho AS (GL4J7SY7W5)"

eval "$(thefuck --alias)"

alias Frodo="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app ; xcrun simctl boot Frodo"
alias Sam="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app ; xcrun simctl boot Frodo"

function sim() {
    open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
    if [ "$1" != "" ]
    then
        xcrun simctl boot "$1"
    fi
}

function sima() {
    cd $ANDROID_HOME/emulator
    ./emulator @"$1" -writable-system
}

if [ $commands[minikube] ]; then
  source <(minikube completion zsh)
fi
source <(kubectl completion zsh)

source $HOME/.zshrc.local
source $HOME/.aliases
