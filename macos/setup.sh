mkdir -p $HOME/Pictures/Screenshots
mkdir -p $HOME/.config
mkdir -p $HOME/.local/share
mkdir -p $HOME/.local/state
mkdir -p $HOME/.cache

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.screencapture "location" -string "~/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "jpg"

killall SystemUIServer
