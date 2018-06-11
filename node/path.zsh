#!/bin/zsh

[[ -d "$HOME/.npm/bin" ]] && export PATH="$PATH:$HOME/.npm/bin"

if [[ "$(uname -s)" = "Darwin" ]]; then
  nvm_install_dir="/usr/local/Cellar/nvm"
  latest_nvm_version="$(/bin/ls $nvm_install_dir | sort -rn | head -n 1)"
  . "$nvm_install_dir/$latest_nvm_version/nvm.sh"
  nvm use 9 &>/dev/null
fi
