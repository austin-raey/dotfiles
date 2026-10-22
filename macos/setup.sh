# commands to be run in a Terminal at some point after the OS is installed.
mkdir -p "$HOME/Pictures/Screenshots"
mkdir -p "$HOME/Developer"

mkdir -p "$HOME/.config/fish/conf.d"
mkdir -p "$HOME/.config/fish/functions"
touch -p "$HOME/.config/fish/config.fish"

# If using fish
(
	set -o pipefail
	cd "$HOME/.config" || exit 1
	curl -fsSL https://github.com/austin-raey/dotfiles/archive/refs/heads/latest.tar.gz |
		tar -xz --strip-components=1
)
# If using zsh
## TBD


defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.screencapture "location" -string "~/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "jpg"

sudo scutil --set HostName mbp
sudo scutil --set LocalHostName mbp

defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

killall Dock
