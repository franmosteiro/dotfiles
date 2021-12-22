#!/bin/bash

PYTHON_PATH="/usr/local/opt/python/libexec"
RUBY_PATH="/usr/local/opt/ruby"
RVM="$HOME/.rvm"
JAVA_HOME="$HOME/.sdkman/candidates/java/current"
SCALA_HOME="$HOME/.sdkman/candidates/scala/current"
SBT_HOME="$HOME/.sdkman/candidates/sbt/1.5.5"
PYENV_ROOT="$HOME/.pyenv"

export GEM_HOME="$HOME/.gem"

export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_INSTALL_BADGE="(ʘ‿ʘ)"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# GPG troubleshotting -> https://stackoverflow.com/questions/41052538/git-error-gpg-failed-to-sign-data
if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi

paths=(
  "/opt/homebrew/bin"
  "$HOME/bin"
  "$DOTFILES_PATH/bin"
  "$RUBY_PATH/bin"
  "$PYENV_ROOT/bin"
  "$PYTHON_PATH/bin"
  "$RVM/bin"
  "$GEM_HOME/bin"
  "$JAVA_HOME/bin"
  "$SCALA_HOME/bin"
  "$SBT_HOME/bin"
  "$(pyenv root)/shims"
  "/bin"
  "/usr/local/bin" # This contains Brew ZSH. If it's below `/bin` it won't be executed.
  "/usr/local/opt/make/libexec/gnubin"
  "/usr/bin"
  "/usr/local/sbin"
  "/usr/sbin"
  "/sbin"
)

PATH=$(
  IFS=":"
  echo "${paths[*]}"
)

export PATH
