if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/Devel
  source /usr/local/bin/virtualenvwrapper.sh
fi
