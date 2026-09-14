. "$HOME/.config/vite-plus/env"
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/mise activate zsh --shims)"

autoload -Uz compinit
compinit

for config_file in "$HOME/.local/config/zsh/"*.zsh; do
	[ -r "$config_file" ] && source "$config_file"
done

[ -d "./Developer" ] && cd ./Developer

echo ".zshrc loaded"