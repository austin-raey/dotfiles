autoload -Uz compinit
compinit

# Source all files in $XDG_CONFIG_HOME/zsh
for config_file in "$XDG_CONFIG_HOME/zsh/"*.zsh; do
	[ -r "$config_file" ] && source "$config_file"
done

[ -d "./Developer" ] && cd ./Developer
