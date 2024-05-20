#!/bin/bash
# Fresh Dev Setup OSX

echo "Installing Homebrew..."
if test !$(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Updating Homebrew Repository..."
brew update

echo "Installing Tools with Homebrew..."
brew install asdf
brew install awscli
brew install coreutils
brew install fzf
brew install git
brew install git-extras
brew install git-flow
brew install jq
brew install jesseduffield/lazygit/lazygit
brew install nvim
brew install ripgrep
brew install starship
brew install stow
brew install tmux
brew install tree
brew install wget
brew install koekeishiya/formulae/yabai
brew install zoxide

echo "Install Apps..."
brew install --cask raycast
brew install --cask alacritty
brew install --cask docker
brew install --cask font-fira-code-nerd-font
brew install --cask google-chrome
brew install --cask karabiner-elements
brew install --cask obsidian
brew install --cask rectangle
brew install --cask slack
brew install --cask spotify
brew install --cask vlc
brew install --cask visual-studio-code

echo "Cleanup Homebrew..."
brew cleanup
