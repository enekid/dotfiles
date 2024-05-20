
# Install oh-my-zsh
sudo apt install zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install neovim
sudo apt install make gcc ripgrep unzip git xclip
sudo snap install nvim --classic

# Install 
sudo apt install -y build-essential curl git 

# Node
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest:20
asdf global nodejs latest:20
npm install -g typescript typescript-language-server

# TODO
# NerdFont