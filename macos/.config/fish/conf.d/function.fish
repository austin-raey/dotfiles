function __update
  cd $HOME
  printf '\033[1;34mUpdate with brew\033[0m\n'
  brew update
  brew upgrade -y
  brew autoremove
  brew cleanup
  brew completions link

  printf '\033[1;34mUpdate with mise\033[0m\n'
  mise up -y

  printf '\033[1;34mUpdate with vite-plus\033[0m\n'
  vp upgrade

  cd - > /dev/null
end

function __wren-publish
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
end
