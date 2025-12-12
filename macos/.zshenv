# NOTE - Environment variables, XDG Variables:
# These are set because some tools will use these directories for storage if found to be set.
export XDG_CACHE_HOME="$HOME/.local/cache"
export XDG_CONFIG_HOME="$HOME/.local/config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="$XDG_CACHE_HOME/runtime"
export XDG_STATE_HOME="$HOME/.local/state"

export VISUAL="code"
export EDITOR="$VISUAL"
export GIT_EDITOR="code --wait"

export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_repl_history"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_LOGS_DIR="$XDG_STATE_HOME/npm/logs"
export NPM_CONFIG_PREFIX="$XDG_DATA_HOME/npm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PNPM_HOME="$XDG_CONFIG_HOME/pnpm"
export PROTO_CONFIG_MODE="upwards-global"
export PROTO_HOME="$XDG_CONFIG_HOME/proto"
export YARN_CACHE_FOLDER="$XDG_CACHE_HOME/yarn"

export PATH="$PNPM_HOME:$PROTO_HOME/shims:$PROTO_HOME/bin:$HOME/.rd/bin:$PATH"
