mkdir -p $HOME/Pictures/Screenshots

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.screencapture "location" -string "~/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "jpg"

killall SystemUIServer
