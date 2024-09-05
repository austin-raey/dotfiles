HISTSIZE=20
SAVEHIST=0

alias u="brew update && brew upgrade && brew cleanup"
alias p="pnpm"

[ -s "/Users/yadon/.bun/_bun" ] && source "/Users/yadon/.bun/_bun"
if type brew &>/dev/null
then
  export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

if [ -d ./Developer ]; then
  cd ./Developer
fi
