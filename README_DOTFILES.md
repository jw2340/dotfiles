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

# if computer username changed
update path to oh-my-zsh installation
https://github.com/jw2340/dotfiles/blob/master/.zshrc#L5

# install dependencies
sh install.sh

# update ZSH export in .zshrc if username is different TODO: scriptify this
# export ZSH="/Users/{username}/.oh-my-zsh"

# possible errors and solutions

zsh compinit: insecure directories, run compaudit for list.
https://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories

installing zsh may fail to clone ohmyzsh repo
run this command with sudo:
https://github.com/jw2340/dotfiles/blob/master/install.sh#L6
```
