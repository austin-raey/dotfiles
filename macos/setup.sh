# commands to be run in a Terminal at some point after the OS is installed.
mkdir -p "$HOME/Pictures/Screenshots"
mkdir -p "$HOME/Developer"

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
