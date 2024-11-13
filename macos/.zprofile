HISTSIZE=3
SAVEHIST=0
export SHELL_SESSIONS_DISABLE=1
export PROTO_HOME="$HOME/.proto"
export PATH="$HOME/Developer/bin:$PROTO_HOME/shims:$PROTO_HOME/bin:$HOME/.rover/bin:$PATH"

alias cdd="cd ~/Developer"
alias p="pnpm"
alias u="brew update && brew upgrade && brew cleanup"
__pkg-update-git-commit () {
  pnpm up -L
  if ! git diff --quiet; then
		git add .
    git commit -m "📦 package update"
		code .
  fi
}
alias pkg="__pkg-update-git-commit"

eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.proto/_proto
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"
source ~/.rover/env

autoload -Uz compinit
compinit
# autoload -U promptinit; promptinit
# prompt typewritten


if [ -d ./Developer ]; then
  cd ./Developer
fi
