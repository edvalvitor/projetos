#!/bin/bash
#Script para xrandr, monitores
echo "Script para gerenciar monitores com Xrandr"
function saida(){ 
    echo "Escolha o monitor"
    echo "1) VGA-1 2) HDMI-1"
    read saida
    if [ "$saida" = "1" ]; then
        saida="VGA-1"
    elif [ "$saida" = "2" ]; then
        saida="HDMI-1"
    else
        echo"Saindo!"
    fi
}

function resolucao(){ 
    echo "Escolha a Resolução"
    echo "1)1366x760
2)1024x768
3)960x720
4)928x696
5)896x672"
    read resolucao
    if [ "$resolucao" = "1" ]; then
        resolucao="1366x760"
    elif [ "$resolucao" = "2" ]; then
        resolucao="1024x768"
    elif [ "$resolucao" = "3" ]; then
        resolucao="960x720"
    elif [ "$resolucao" = "4" ]; then
        resolucao="928x696"
    elif [ "$resolucao" = "5" ]; then
        resolucao="896x672"
    else
        echo"opção inválida!"   
    fi
}

saida
resolucao
xrandr --output $saida --mode $resolucao
