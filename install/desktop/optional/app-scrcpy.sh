# Install dependencies
# Install dependencies using dnf instead of apt
sudo dnf install -y ffmpeg SDL2 android-tools wget \
  gcc git pkgconfig meson ninja-build SDL2-devel \
  ffmpeg-devel libusb1 libusb1-devel

# Install latest Scrcpy straight from GitHub
cd /tmp
git clone https://github.com/Genymobile/scrcpy
cd scrcpy
./install_release.sh
cd ..
rm -rf scrcpy

cat <<EOF >~/.local/share/applications/Android.desktop
[Desktop Entry]
Version=1.0
Name=Android
Comment=Android Screen Mirroring
Exec=scrcpy -S
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakub/applications/icons/Android.png
Categories=GTK;
StartupNotify=false
EOF
