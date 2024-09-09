export SHELL_SESSIONS_DISABLE=1
export PROTO_HOME="$HOME/.proto";
export PATH="$HOME/Developer/bin:$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH";
HISTSIZE=20
SAVEHIST=0

eval "$(/opt/homebrew/bin/brew shellenv)"

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

alias u="brew update && brew upgrade && brew cleanup"
alias p="pnpm"
