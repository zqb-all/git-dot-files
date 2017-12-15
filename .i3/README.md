# i3wm configuration
---
(only tested on Ubuntu 14.04)

## Installation
---
```sh
sudo apt-get install i3 i3lock
git clone git@bitbucket.org:naynil/i3wm-config.git ~/.i3
```

### External dependencies

#### autolock: xautolock
```sh
sudo apt-get install xautolock
```



#### Status bar: conky
```sh
sudo apt-get install conky
```

#### Application launcher: rofi
The newest version of rofi can't be compiled directly on Ubuntu 14.04.
Therefore, choose the historic stable version.
```sh
#cd ~/Downloads
#wget https://github.com/DaveDavenport/rofi/releases/download/0.15.12/rofi-0.15.12.tar.gz
#tar -zxvf rofi-0.15.12.tar.gz
#cd rofi-0.15.12
#./configure
#make
#sudo make install

wget http://launchpadlibrarian.net/225831224/rofi_0.15.11-1_amd64.deb
sudo dpkg -i rofi_0.15.11-1_amd64.deb
```

To run command with sudo in rofi, use `gksudo`, whose package name in Ubuntu is `gksu`.
``` sh
sudo apt-get install gksu
```

#### Desktop wallpaper manager: feh
``` sh
sudo apt-get install feh
```

#### Composite manager: compton
``` sh
sudo apt-get install compton
```

## Postscript
---
On Ubuntu, when running a file manager such as `Nautilus`,
the desktop will auto run, which can not be closed.
To disable this, run following command:
``` sh
gsettings set org.gnome.desktop.background show-desktop-icons false
```
