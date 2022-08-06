# dotfiles README

## Setup
```
# clone repo in root directory
git clone --bare https://github.com/jw2340/dotfiles.git $HOME/.cfg

# add a temporary "dotfiles" alias to this git repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# copy the files
dotfiles checkout

# ignore untracked (non dotfiles) files
dotfiles config --local status.showUntrackedFiles no

# if computer username changed, update USER in .zshrc

# install dependencies
sh install.sh
```

## Possible errors and solutions

```
zsh compinit: insecure directories, run compaudit for list.
```
See https://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories

## Sources
- [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
- https://github.com/liamfd/dotfiles
- http://dimafeng.com/2016/10/09/dotfiles/