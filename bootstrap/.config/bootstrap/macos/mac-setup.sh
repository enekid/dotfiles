###############################################################################
# Dock                                                                      #
###############################################################################

# Dock icon size of 48 pixels
defaults write com.apple.dock "tilesize" -int "48"

# Autohide the Dock when the mouse is out
defaults write com.apple.dock "autohide" -bool "true"

# Remove the Dock autohide animation
defaults write com.apple.dock "autohide-time-modifier" -float "0"

# Only show active apps
defaults write com.apple.dock "static-only" -bool "true"

# Put the Dock on the left of the screen
defaults write com.apple.dock "orientation" -string "left"

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

killall Dock

###############################################################################
# Finder                                                                      #
###############################################################################

# Show all file extensions inside the Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Show hidden files inside the Finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

# Show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# List view
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

# Keep folders on top
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# Search the current folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Do not display the warning when changing file extension
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"

# Remove the delay when hovering the toolbar title
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"

# Allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

killall Finder

###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Enable subpixel font rendering on non-Apple LCDs
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 1

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

###############################################################################
# Trackpad / Input                                                            #
###############################################################################

# Enable dragging with three finger drag
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1st

# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

###############################################################################
# Disks                                                                      #
###############################################################################

# When a new disk is connected, system does not prompt to ask if you want to use it as a backup volume.
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"

###############################################################################
# Computer name                                                               #
###############################################################################

# Computer name
sudo scutil --set ComputerName nko-air

# Bonjour hostname
sudo scutil --set LocalHostName nko-air

dscacheutil -flushcache

