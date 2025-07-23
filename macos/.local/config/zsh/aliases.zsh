function __update() {
  echo "\033[1;34mUpdating with brew\033[0m"
  brew update && brew upgrade && brew autoremove && brew cleanup
  echo "\033[1;34mUpdating with mas\033[0m"
  mas upgrade
}

alias u="__update"
alias edit="$EDITOR"
alias e="$EDITOR"
