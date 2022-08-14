# Install homebrew
if ! command -v brew; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already exists. Skipping..."
fi

# Install ohmyzsh
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install command line tools
brew install fzf ag jq kubectl

# Install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
