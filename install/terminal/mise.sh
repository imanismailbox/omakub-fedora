# Install mise for managing multiple versions of languages. See https://mise.jdx.dev/
sudo dnf install -y gpg wget curl

# Add mise repository for Fedora
sudo dnf config-manager addrepo --from-repofile=https://mise.jdx.dev/rpm/mise.repo --overwrite
sudo rpm --import https://mise.jdx.dev/gpg-key.pub

# Install mise
sudo dnf install -y mise