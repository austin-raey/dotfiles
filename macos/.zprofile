export SHELL_SESSIONS_DISABLE=1

eval "$(/opt/homebrew/bin/brew shellenv)"
[ -s "~/.bun/_bun" ] && source ~/.bun/_bun
[ -s "~/.proto/_proto" ] && source ~/.proto/_proto
[ -s "~/.rover/env" ] && source ~/.rover/env

[ -d "./Developer" ] && cd ./Developer
