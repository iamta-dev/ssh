#!/bin/bash
# Zip and unzip files and folders on MacOS
# Compress a file or folder: Control-click it or tap it using 
# two fingers, then choose Compress from the shortcut menu. 
# Unzip (expand) a compressed item: Double-click the .zip file.

# Zip and unzip MacOS with command script
# http://magma.maths.usyd.edu.au/magma/faq/extract
# create a zip file
# zip -e .ssh
# create a zip file use password
# zip -er  my-ssh.zip .ssh

# Unpacking .zip files
# unzip -a my-ssh.zip

# Generating a new SSH key and adding it to the ssh-agent
# https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# abbr add --force ssh="cd ~/.ssh && ssh-add -D && ssh-add id_rsa_blockfint"

# fix # Could not open a connection to your authentication agent
# eval `ssh-agent -s`
echo "ssh-key setup .........."
# sudo apt-get install unzip
unzip -a my-ssh.zip
rm -rf ~/.ssh
cp -R .ssh ~/.ssh
cd ~/.ssh
chmod 600 *
eval $(ssh-agent -s)
ssh-add -D
ssh-add id_rsa_blockfint
git config --global user.name "Natthawat Narin"
git config --global user.email "natthawat.n@blockfint.com"
cd ~ && cat .gitconfig

### wsl
# explorer.exe .
# sudo ln -s /mnt/c/Users/USER/.ssh ~/.ssh
# chmod 600 *
# eval $(ssh-agent -s)
# ssh-add id_rsa_blockfint
echo "end .........."
