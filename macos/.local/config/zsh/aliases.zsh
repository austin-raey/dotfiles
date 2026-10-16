function __update() {
  cd $HOME
  echo "\033[1;34mUpdate with brew\033[0m"
  brew update
  brew upgrade -y
  brew autoremove
  brew cleanup
  brew completions link

  echo "\033[1;34mUpdate with mise\033[0m"
  mise up -y

  echo "\033[1;34mUpdate with vite-plus\033[0m"
  vp upgrade

  cd - > /dev/null
}

function __wren-publish() {
  cd ~/Developer/wrenjs
  pnpm login
  cd ./packages/core
  vp pm publish --publish-branch trunk
  cd -
  cd ./packages/integrations/preact
  vp pm publish --publish-branch trunk
  cd -
  cd ./packages/integrations/react
  vp pm publish --publish-branch trunk
  cd -
  cd ./packages/integrations/ssx
  vp pm publish --publish-branch trunk
  cd -
  cd ./packages/adapters/node
  vp pm publish --publish-branch trunk
  cd -
}

alias code="$EDITOR"
alias e="$EDITOR"
alias edit="$EDITOR"
alias p="pnpm"
alias px="pnpx"
alias u="__update"
alias v="vp"
alias vr="vpr"
alias vx="vpx"

alias profile="$EDITOR ~/.zshenv ~/.zprofile ~/.zshrc ~/.local/config/zsh"
