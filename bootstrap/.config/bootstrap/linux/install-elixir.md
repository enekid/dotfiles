## Install asdf
https://apollin.com/how-to-install-elixir-on-ubuntu-22-using-asdf/

sudo apt install curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc
source ~/.bashrc

https://asdf-vm.com/manage/commands.html

asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf list-all erlang
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf list-all elixir

## Install elixir/erlang and Phoenix
https://thinkingelixir.com/install-elixir-using-asdf/

sudo apt install build-essential libncurses5-dev openssl libssl-dev xsltproc fop -y


asdf update
asdf plugin-update --all

asdf install erlang 26.2.3
asdf install elixir 1.16.2-otp-26

asdf global erlang 26.2.3
asdf global elixir 1.16.2-otp-26

https://hexdocs.pm/phoenix/installation.html
sudo apt install inotify-tools

## Ubuntu
Set caps lock as Ctrl with Tweaks
Set <> as Shift L with Input Mapper 
Set Shift L as Esc with Input Mapper 
Set Ctrl + [1,2,3,4] to go to workspace with system settings / keyboard / View and customize shortcuts

## Development
aws-cli https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
apt install jq

## command line
starship https://starship.rs/
lazygit https://github.com/jesseduffield/lazygit
tmux & tpm apt install tmux

### docker engine & compose
https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user

## github
add ssh keys https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

git config --global user.name "Eneko Lakasta"
git config --global user.email "eneko.lakasta@doofinder.com"
