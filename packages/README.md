# Installation 🤵

### **Dependencies** 📊

```
sudo apt update && sudo apt upgrade
sudo apt install gnome-shell-extension-manager flameshot xdotool curl git htop

sudo add-apt-repository universe
sudo apt install gnome-tweaks

sudo npm install -g yarn
```

```
https://docs.github.com/en/enterprise-server@3.4/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
```

### Alacritty ligatures :stuck_out_tongue_winking_eye:

```
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty

git clone https://github.com/zenixls2/alacritty; cd alacritty
git checkout ligature
cargo build --release
sudo mv /usr/bin/alacritty /usr/bin/alacritty.bak
sudo cp ./target/release/alacritty /usr/bin
```

### Zsh :zany_face:

```
sudo apt install zsh
source $HOME/.config/zsh/.zshrc
chsh -s $(which zsh)
```

### Colorls :file_folder:

```
gem install colorls
cp $(dirname $(gem which colorls))/yaml/dark_colors.yaml ~/.config/colorls/dark_colors.yaml
```

### Neovim :heart_eyes:

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

sudo apt install ripgrep fd-find golang-go cargo ruby-full python3-pip openjdk-17-jre openjdk-17-jdk luarocks npm php-cli unzip xsel python3.10-venv rpcbind stylish-haskell
sudo npm install eslint markdownlint-cli2 bash-language-server -g
sudo snap install powershell --classic

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs

curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

### Markdown-preview :zap:

```
sudo npm install markdownlint-cli2 -g
cd .local/share/nvim/lazy/markdown-preview.nvim/
yarn install
```

### Ranger :satisfied:

- Drag, drop, image preview and icons

```
sudo apt install pkg-config libgtk-3-dev build-essential
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
git clone https://github.com/mwh/dragon.git; cd dragon; make install
```
