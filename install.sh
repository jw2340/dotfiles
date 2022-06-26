# Install ohmyzsh
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install command line tools
brew install fzf ag jq

# Install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
