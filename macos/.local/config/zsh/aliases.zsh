function __update() {
  echo "\033[1;34mUpdating with brew\033[0m"
  brew update && brew upgrade && brew autoremove && brew cleanup
  echo "\033[1;34mUpdating with proto\033[0m"
  cd $HOME
  proto outdated
  proto install
  cd -
}

alias u="__update"
alias edit="$EDITOR"
alias e="$EDITOR"
