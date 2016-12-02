#!/bin/bash
#Script para xrandr, monitores
echo "Script para gerenciar monitores com Xrandr"
function saida(){ 
    echo "Escolha o monitor"
    echo "1) LVDS1 2) HDMI1"
    read saida
    if [ "$saida" = "1" ]; then
        saida="LVDS1"
    elif [ "$saida" = "2" ]; then
        saida="HDMI1"
    else
        echo"Saindo!"
    fi
}

function resolucao(){ 
    echo "Escolha a Resolução"
    echo "1)1360x768
2)1152x864
3)1280x720
4)1024x758
5)800x600"
    read resolucao
    if [ "$resolucao" = "1" ]; then
        resolucao="1360x768"
    elif [ "$resolucao" = "2" ]; then
        resolucao="1152x864"
    elif [ "$resolucao" = "3" ]; then
        resolucao="1280x720"
    elif [ "$resolucao" = "4" ]; then
        resolucao="1024x758"
    elif [ "$resolucao" = "5" ]; then
        resolucao="800x600"
    else
        echo"opção inválida!"   
    fi
}

function posicao(){
    echo "Escolha a Posição"
    echo "1) Esquerda 2) Direita 3) Espelhado"
    read posi
    if [ "$posi" = "1" ]; then
        posicao="--left-of"
	echo "Escolha o monitor de Referência"
        echo "1) LVDS1 2) HDMI1"
	read saidap
    	if [ "$saidap" = "1" ]; then
    	    saidap="LVDS1"
    	elif [ "$saidap" = "2" ]; then
            saidap="HDMI1"
    	else
            echo"Saindo!"
    	fi
    elif [ "$posi" = "2" ]; then
        posicao="--right-of"
	echo "Escolha o monitor de Referência"
        echo "1) LVDS1 2) HDMI1"
	read saidap
    	if [ "$saidap" = "1" ]; then
    	    saidap="LVDS1"
    	elif [ "$saidap" = "2" ]; then
            saidap="HDMI1"
    	else
            echo"Saindo!"
    	fi
    elif [ "$posi" = "3" ]; then
        posicao="--same-as"
	echo "Escolha o monitor de Referência"
        echo "1) LVDS1 2) HDMI1"
	read saidap
    	if [ "$saidap" = "1" ]; then
    	    saidap="LVDS1"
    	elif [ "$saidap" = "2" ]; then
            saidap="HDMI1"
    	else
            echo"Saindo!"
    	fi
    else
        echo"Saindo!"
    fi
}

saida
resolucao
posicao
xrandr --output $saida $posicao $saidap --mode $resolucao
