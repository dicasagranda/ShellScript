#!/bin/bash
#
#===============================================================================
#
# File...........: hd.sh
# Title..........: HD ATUAL
# Program........: Shell Code -  GNU/Linux
#
# Description....: Exibe o tamanho atual do HD e seu espaço livre
#
# Copyright......: Copyright(c) 2020 / @Diego Casagranda Vilela dos Santos - HomeLab
# License........: GNU GENERAL PUBLIC LICENSE - Version 3, 29 June 2007
#
# Author.........: Diego Casagranda Vilela dos Santos
# E-Mail.........: casagranda@tutanota.com
#
# Dependency.....: None
#
# Date...........: 24/01/2022
# Update.........: None
#
# Version........: 0.1.0
#
#===============================================================================
#
# ###########
# # History #
# ###########
#
#     24/01/2022 : Criação do script
#
#===============================================================================

#Pega o disco principal representado por "." 
#para pegar outra partição tem que subistituir por /dev/sdb1 ou outra qualquer

DISCO_ATUAL=`df -h . | tail -n1 | awk '{print $1}'`

#Pega o tamanho total do disco
TAMANHO=`df -h | grep $DISCO_ATUAL | awk '{print $2}'`

#Pega o quanto foi utilizado atualmente
USADO=`df -h | grep $DISCO_ATUAL | awk '{print $3}'`

#Pega o total de espaço livre no disco
LIVRE=`df -h | grep $DISCO_ATUAL | awk '{print $4}'`

#Pega a porcentagem livre do disco
PORCENTAGEM=`df -h | grep $DISCO_ATUAL | awk '{print $5}'`

#Exibe na tela a informação do disco
echo "HD atual de: $TAMANHO, utilizado: $USADO, Espaço Livre: $LIVRE"
