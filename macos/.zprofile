export SHELL_SESSIONS_DISABLE=1

eval "$(/opt/homebrew/bin/brew shellenv)"
[ -s "~/.rover/env" ] && source ~/.rover/env

[ -d "./Developer" ] && cd ./Developer
