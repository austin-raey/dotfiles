# NOTE - Environment variables, XDG Variables:
# These are set because some tools will use these directories for storage if found to be set.
export XDG_CACHE_HOME="$HOME/.local/cache"
export XDG_CONFIG_HOME="$HOME/.local/config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="$XDG_CACHE_HOME/runtime"
export XDG_STATE_HOME="$HOME/.local/state"

export GIT_EDITOR="code --wait"
export VISUAL="code"
export EDITOR="$VISUAL"

export PNPM_HOME="$XDG_CONFIG_HOME/pnpm"
export PROTO_HOME="$XDG_CONFIG_HOME/proto"

export PATH="$PROTO_HOME/bin:$PATH";

alias u="brew update && brew upgrade && brew cleanup"
alias edit="$EDITOR"
alias e="$EDITOR"

# For me if copying a backup from a ExFAT drive
function fix-git() {
	git diff -p \
		| grep -E '^(diff|old mode|new mode)' \
		| sed -e 's/^old/NEW/;s/^new/old/;s/^NEW/new/' \
		| git apply
}
