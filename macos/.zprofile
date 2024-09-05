export SHELL_SESSIONS_DISABLE=1
export PROTO_HOME="$HOME/.proto";
export PATH="$HOME/Developer/bin:$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH";

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/proto activate zsh)"
