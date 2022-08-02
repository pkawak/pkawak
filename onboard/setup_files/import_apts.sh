sudo apt update
sudo apt upgrade

sudo apt install vim
sudo apt install nvidia-cuda-toolkit

# set up git
sudo apt install git
ssh-keygen -t ed25519 -C "b00039424@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
# copy the top into your SSH and GPG keys on github.com
