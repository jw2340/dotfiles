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

# if there is a merge conflict, rename the conflicting files and try again

# if computer username changed update path to oh-my-zsh installation

# install dependencies
sh install.sh

# update ZSH export in .zshrc if username is different
# export ZSH="/Users/{username}/.oh-my-zsh"
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