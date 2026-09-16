__env

autoload -Uz compinit
compinit

for config_file in "$HOME/.local/config/zsh/"*.zsh; do
	[ -r "$config_file" ] && source "$config_file"
done

[ -d "./Developer" ] && cd ./Developer
