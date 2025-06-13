export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export GIT_EDITOR="code --wait"
export VISUAL="code"
export EDITOR="$VISUAL"
export PROTO_HOME="$XDG_CONFIG_HOME/proto"

export PATH="$HOME/.rover/bin:$PATH"
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH";

alias u="brew update && brew upgrade && brew cleanup"
alias edit="$EDITOR"
alias e="$EDITOR"

function fix-git() {
	git diff -p \
		| grep -E '^(diff|old mode|new mode)' \
		| sed -e 's/^old/NEW/;s/^new/old/;s/^NEW/new/' \
		| git apply
}
