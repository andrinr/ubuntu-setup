mkdir ~/projects
git config --global user.name "andrinr"
git config --global user.email "andrinrehmann@gmail.com"
sudo apt-get install python3
wget https://repo.anaconda.com/miniconda/Miniconda3-py310_22.11.1-1-Linux-x86_64.sh
chmod 777 Miniconda3-py310_22.11.1-1-Linux-x86_64.sh
./Miniconda3-py310_22.11.1-1-Linux-x86_64.sh

ssh-keygen
cat  ~/.ssh/id_rsa.pub
