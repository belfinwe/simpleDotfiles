# simpleDotfiles
I'm still new to dotfiles, but thought I'd upload the results of what I've
learned so far here. Will be updated as I learn more.  
For the default file paths to work, you should download/clone these files to
`~/git/`. Script to easily create that folder below.  
If you want to place the files somewhere else, you need to alter the file path
in some of the files for them to work.  

## Download and run content 
The commands below installs git, creates the folder `git` (where I store my git
repos), and lastly clones the project into the folder `git`.  
__Downloading:__  
```
sudo apt-get install git
```
```
mkdir ~/git/
```
```
cd ~/git && git clone git@github.com:belfinwe/simpleDotfiles.git
```  
__Running:__  
```
cat aliasToBashrc >> ~/.bashrc
```
```
source ~/.bashrc && runDot
```
  
## Files

__.alias__  
Contains a few aliases. How to add them to `.bashrc` can be viewed under
"Running" above.
  
__.programs__  
Contains installation (using `apt`) of a few programs, such as:
- vim
- tty-clock
- dropbox
- vlc
- neofetch
- htop
