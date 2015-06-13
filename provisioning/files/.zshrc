export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nanotech"
export UPDATE_ZSH_DAYS=1
plugins=(autojump command-not-found git history ubuntu vagrant)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
