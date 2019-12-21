# dotfiles

Based on https://www.atlassian.com/git/tutorials/dotfiles

# Machine Setup
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

# install dependencies
sh install.sh

# update ZSH export in .zshrc if username is different TODO: scriptify this
# export ZSH="/Users/{username}/.oh-my-zsh"
```
