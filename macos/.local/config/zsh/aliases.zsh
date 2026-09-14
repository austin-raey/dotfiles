function __update() {
  cd $HOME
  echo "\033[1;34mUpdating with brew\033[0m"
  brew update
  brew upgrade -y
  brew autoremove
  brew cleanup
  brew completions link

  echo "\033[1;34mUpdating with mise\033[0m"
  mise up
  cd - > /dev/null
}

alias code="$EDITOR"
alias e="$EDITOR"
alias edit="$EDITOR"
alias u="__update"

alias profile="$EDITOR ~/.zshenv ~/.zprofile ~/.zshrc ~/.local/config/zsh"