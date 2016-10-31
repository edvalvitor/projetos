#!/bin/bash
echo "#############################################"
echo "######SCRIPT DE PÓS-INSTALAÇÃO DO DEBIAN#####"
echo "#############################################"
echo " "

echo "-----Instalando o básico-----"
apt install xorg alsa-{base,utils} xdg-user-dirs
echo " "

echo "-----Instalando pacote necessários para uso-----"
apt install pcmanfm vim fonts-roboto obconf openbox lxappearance nitrogen dmenu chromium scrot screenfetch xarchiver ufw lxterminal git gimp

echo "-----Baixando pacote de temas para Openbox-----"
wget -c http://orig00.deviantart.net/bd03/f/2013/270/6/8/cathexis_suite_by_samirkahvedzic-d5g1i90.zip

echo "-----Criando pastas para temas e ícones-----"
mkdir .themes
echo "Pasta de temas criada!"
mkdir .icons
echo "Pasta de ícones criada!"

echo "-----Clondando repositórios de configurações-----"
mkdir git
cd git
git clone https://github.com/edvalvitor/archlinux.git


