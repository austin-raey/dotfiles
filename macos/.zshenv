export VISUAL="code"
export EDITOR="$VISUAL"
export GIT_EDITOR="code --wait"
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_UPDATE_REPORT_NEW=1

export DO_NOT_TRACK=1
export NEXT_TELEMETRY_DISABLED=1
export ASTRO_TELEMETRY_DISABLED=1
export COREPACK_ENABLE_DOWNLOAD_PROMPT=0
export npm_config_audit=false
export npm_config_fund=false

__env() {
  eval "$(/opt/homebrew/bin/brew shellenv)"
  . "$HOME/.config/vite-plus/env"
  eval "$(/opt/homebrew/bin/mise activate zsh --shims)"
}

__env
