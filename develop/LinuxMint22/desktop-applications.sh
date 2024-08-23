#!/bin/bash
FREEFILESYNC=FreeFileSync_13.7_Linux

# Instalando FreeFileSync
# Primero instalamos las librerías libgtk
apt install libgtk2.0-0
apt install libcanberra-gtk-module libcanberra-gtk3-module
# Descargamos e instalamos FreeFileSync ¡ATENCIÓN A LA VERSIÓN!
wget https://freefilesync.org/download/$FREEFILESYNC.tar.gz
tar -zxvf $FREEFILESYNC.tar.gz
./$FREEFILESYNC.run

# Instalando Visual Studio Code en Linux Mint
# Artículo: https://softhints.com/install-visual-studio-code-linux-mint/
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get install apt-transport-https
apt-get update
apt-get install code # or code-insiders

# PhpMyAdmin - https://idroot.us/install-phpmyadmin-linux-mint-21/
apt install software-properties-common apt-transport-https wget ca-certificates gnupg2
apt install phpmyadmin
