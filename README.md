# simpleDotfiles
I'm still new to dotfiles, but thought I'd upload the results of what I've
learned so far here. Will be updated as I learn more.  
For the default file paths to work, you should download/clone these files to
`~/git/`. Script to easily create that folder below.  
If you want to place the files somewhere else, you need to alter the file path
in some of the files for them to work.  

## Before downloading/running content

```
if ! [ -f ~/git/ ]; then
    mkdir ~/git/
fi
```  
  
## Files

__.alias__  
Contains a few aliases. How to add them to `.bashrc` in the `.alias`file.  
  
__.programs__  
Contains installation (using `apt`) of a few programs, such as:
- vim
- tty-clock
- dropbox
- vlc
- neofetch
- htop
