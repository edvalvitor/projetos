#!/bin/bash
# Script para ser usado de forma interativa par ao pacman
# Por Edval Vitor 28/04/2016

echo "Bem vindo ao Assistente do Pacman!"
echo 'Digite uma opção:
1) Atualizar o Sistema
2) Instalar um Pacote
3) Procurar por Pacotes
4) Procurar por Pacotes (AUR)
5) Remover Pacotes
6) Limpar Cache de Pacotes Desnecessários'
read opcao

case $opcao in
	1) echo "Atualizando o Sistema";
	   pacman -Syyu;;
	2) echo "Digite o gerenciador (pacman/yaourt)
Pacman - repositórios oficiais do Arch Linux.
Yaourt - comunidade AUR.";
	   read gerenciador;
	   echo "Digite o nome do pacote";
	   read pacote;
	   $gerenciador -S $pacote;;
	3) echo "Digite o nome do pacote";
	   read pacote;
	   pacman -Ss $pacote;;
	4) echo "Digite o nome do pacote";
	   read pacote;
	   yaourt $pacote;;
	5) echo "Digite o nome dos pacotes"
	   read pacote;
	   pacman -Rsn $pacote;;
	6) echo "Listando pacotes desnecessários, sem dependências";
	   pacman -Qdt >> .pacman-desnecessarios.log;
	   cat .pacman-desnecessarios.log;
	   echo "Excluindo pacotes desnecessários";
	   pacman -Rsn $(pacman -Qdt);
	   rm .pacman-desnecessarios.log;;
	*) echo "Você digitou uma opção inválida. Fim do Script!";
esac

