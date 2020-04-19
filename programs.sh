#!bin/bash

# date for the log
today=$(date)

####################################################
##       Installs programs I usually install      ##
####################################################

# ##################################################
# git
# ##################################################
sudo apt-get install git -y
if [ -x "$(command -v git)" ]
then
    echo $today" - git installed!\n" >&2 >> installLog
else
    echo $today" - git NOT installed!\n" >&2 >> installLog
fi

# ##################################################
# vim
# ##################################################
sudo apt-get install vim -y
if [ -x "$(command -v vim)" ]
then
    echo $today" - vim install!\n" >&2 >> installLog
else
    echo $today" - vim NOT install!\n" >&2 >> installLog

fi

# ##################################################
# tty-clock
# ##################################################
sudo apt-get install tty-clock -y
if [ -x "$(command -v tty-clock)" ]
then
    echo $today' - tty-clock installed!\n' >&2 >> installLog
else
    echo $today' - tty-clock NOT installed!\n' >&2 >> installLog
fi

# ##################################################
# dropbox
# ##################################################
sudo apt-get install dropbox -y
if [ -x "$(command -v dropbox)" ]
then
    echo $today' - dropbox installed!\n' >&2 >> installLog
else
    echo $today' - dropbox NOT installed!\n' >&2 >> installLog
fi

# ##################################################
# vlc
# ##################################################
sudo apt-get install vlc -y
if [ -x "$(command -v vlc)" ]
then
    echo $today' - vlc installed' >&2 >> installLog
else
    echo $today' - vlc NOT installed' >&2 >> installLog
fi

# ##################################################
# neofetch
# ##################################################
sudo apt-get install neofetch -y
if [ -x "$(command -v neofetch)" ]
then
    echo $today" - neofetch installed!\n" >&2 >> installLog
else
    echo $today" - neofetch NOT installed!\n" >&2 >> installLog
fi

# ##################################################
# htop
# ##################################################
sudo apt-get install htop -y
if [ -x "$(command -v htop)" ]
then
    echo $today" - htop installed!\n" >&2 >> installLog
else
    echo $today" - htop NOT installed!\n" >&2 >> installLog
fi

# ##################################################
# tree
# ##################################################
sudo apt-get install tree -y
if [ -x "$(command -v tree)" ]
then
    echo $today" - tree installed!\n" >&2 >> installLog
else
    echo $today" - tree NOT installed!\n" >&2 >> installLog
fi


# ##################################################
# pip3 and youtube-dl
# ##################################################
sudo apt-get install python3-pip -y && echo $today" - python3-pip installed!\n" >> installLog
sudo -H pip3 install --upgrade youtube-dl && echo $today" - youtube-dl installed!\n" >> installLog


# ##################################################
# Add .alias to .bashrc
# ##################################################
cat aliasToBashrc >> ~/.bashrc && echo $today" - .alias added to .bashrc" >> installLog
source ~/.bashrc

# ##################################################
# Don't show asterisks when writing passwords
# ##################################################
if [ -f /etc/sudoers.d/0pwfeedback ]; then
    sudo rm /etc/sudoers.d/0pwfeedback && echo $today"/etc/sudoers.d/0pwfeedback removed\n" >&2 >> installLog
fi

# ##################################################
# From other sources
# ##################################################
## #################################################
## vim dotfiles, extarnal source
## credit to timss (https://github.com/timss/vimconf)
## vim need to run to finsih the installation
## Is done at the end of the file
## #################################################
cd ~/git
git clone https://github.com/timss/vimconf.git
ln -s ~/git/vimconf/.vimrc ~/.vimrc

# Launching vim, to install extarnal dotfiles
cd ~/ && vim vimTest.txt
