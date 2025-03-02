SAVEHIST=0
HISTSIZE=50

autoload -Uz compinit
compinit

__goto_or_edit() {
	local action="cd"
	local directory="$HOME/Developer"

	[ "$1" = "+edit" ] && action="$EDITOR" && shift

	[ $# -gt 2 ] && echo "Usage: __goto_or_edit [-e] [dir1] [dir2]" && return 1

	for dir in "$@"; do
		directory="$directory/$dir"
	done

	[ -d "$directory" ] && $action "$directory" && [ $action != 'cd' ] && cd "$directory"
	[ -d "$directory" ] || echo "  Directory not found:\n  $directory"
}

# Enable tab completion for __goto_or_edit function
_comp__goto_or_edit() {
	local -a subdirs
	[[ "$words[2]" == "+edit" ]] && shift words && (( CURRENT-- ))

	case $CURRENT in
		2) subdirs=(~/Developer/*(/:t)) ;;
		3) subdirs=(~/Developer/$words[2]/*(/:t)) ;;
	esac

	_describe 'directory' subdirs
}
compdef _comp__goto_or_edit __goto_or_edit
compdef _comp__goto_or_edit '__goto_or_edit +edit'

alias cdd="__goto_or_edit"
alias cde="__goto_or_edit +edit"
