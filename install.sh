TODO
- link to oh-my-zh http://dimafeng.com/2016/10/09/dotfiles/

# run on installation
mkdir ~/.logs
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install fzf
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
