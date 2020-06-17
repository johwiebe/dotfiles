# Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install xcape
git clone https://github.com/alols/xcape.git
cd xcape
make
sudo make install

# Install ranger
apt install ranger

