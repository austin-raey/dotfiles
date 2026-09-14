export VISUAL="code"
export EDITOR="$VISUAL"
export GIT_EDITOR="code --wait"

. "$HOME/.config/vite-plus/env"
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/mise activate zsh --shims)"

echo ".zprofile loaded"