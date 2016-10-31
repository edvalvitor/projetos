#!/bin/bash
#Script para configurar o touchpad ao iniciar o sistema


synclient TapButton1=1
synclient TapButton2=2
synclient TapButton3=3

#Para configurar o .Xresources
#xrdb -merge "${HOME}/.Xresources"
