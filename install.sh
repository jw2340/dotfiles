# Install homebrew
if ! command -v brew; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already exists. Skipping..."
fi

# Install apps
brew install --cask google-chrome spotify visual-studio-code flycut rectangle flux-app slack discord expressvpn git

# Install terminal
brew install --cask ghostty@tip

# Install ohmyzsh
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ohmyzsh plugins
sudo git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Install command line tools
brew install fzf ag jq kubectl yq asdf tree stern gnupg

# Install asdf plugins
asdf plugin-add kubectl https://github.com/asdf-community/asdf-kubectl.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin add golangci-lint https://github.com/hypnoglow/asdf-golangci-lint.git

# Install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
