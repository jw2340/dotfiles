# Install homebrew
if ! command -v brew; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already exists. Skipping..."
fi

# Install ohmyzsh
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ohmyzsh plugins
sudo git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Install command line tools
brew install fzf ag jq kubectl yq asdf tree stern

# Install asdf kubctl plugin
# See https://github.com/asdf-community/asdf-kubectl
asdf plugin-add kubectl https://github.com/asdf-community/asdf-kubectl.git

# Install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
