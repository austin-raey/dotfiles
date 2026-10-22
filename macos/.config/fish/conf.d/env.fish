set -gx VISUAL "code"
set -gx EDITOR "$VISUAL"
set -gx GIT_EDITOR "code --wait"
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_UPDATE_REPORT_NEW 1

set -gx DO_NOT_TRACK 1
set -gx NEXT_TELEMETRY_DISABLED 1
set -gx ASTRO_TELEMETRY_DISABLED 1
set -gx COREPACK_ENABLE_DOWNLOAD_PROMPT 0
set -gx npm_config_audit false
set -gx npm_config_fund false

fish_add_path "$HOME/.local/share/mise/shims"

/opt/homebrew/bin/brew shellenv | source
/opt/homebrew/bin/mise activate fish | source
"$HOME/.config/vite-plus/env.fish" | source
