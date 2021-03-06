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
```bash
sudo apt-get install git
```
```bash
mkdir ~/git/
```
```bash
cd ~/git && git clone https://github.com/belfinwe/simpleDotfiles.git
```  
__Running:__  
```bash
cd simpleDotfiles && . programs.sh
```

After the scipt is done, it wil change directory to $HOME, and open the
`installLog`.

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

__aliasToBashrc__  
Contains the part needed for `.bashrc` to use the `.alias` file. Part of the
automation of the install process. Used by `.programs` (in the file, see  _Add .alias to .bashrc_).

__testPrograms__  
Will be the new `.programs` in the future, just need to be tested more first.
Uses the `installLog` file to log the changes and what programs
are successfully installed.  

__customClock__  
Contains setup for clock in Linux. Shows date, weekday and time.  
Format for the last day of 2019: `|| 31. December - 2019 || Tuesday || 23:59:59`.

## testing branch

Branch for testing. Also for getting to know more about branching in git.
