# Install 1password and 1password-cli single script
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc

# Add 1Password repository for Fedora
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'

# Install 1Password & 1password-cli
sudo dnf -y install 1password