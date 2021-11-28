#!/bin/bash

#cores em bash: https://misc.flogisoft.com/bash/tip_colors_and_formatting

#variaveis do projeto:
#ubntu 18.04


#dir="$dirA"
dir="$(cd "$(dirname "$0")" && pwd)"
cd $dir
pwd

#cd $dir
mkdir Temp
pwd

#sleep 2

# FROM phusion/baseimage:bionic-1.0.0
#FROM ubuntu:20.04
#FROM phusion/baseimage:focal-1.0.0


#nome_imagem="eniodefarias/baseimage:focal-1.0.0"

dev="https://github.com/eniodefarias"
nome_imagem="eniodefarias/ubuntu:18.04"
docker_file="$dir/Dockerfile"
docker_compose="$dir/docker-compose.yml"
nome_projeto="projeto_001_aplicacao_de_metodos_de_aprendizagem_de_maquina_19370"

echo -e ""
echo -e "   Dev:        \e[96m$dev\033[0m "
echo -e "   Projeto:    \e[96m$nome_projeto\033[0m"
echo -e "   Imagem:     \e[96m$nome_imagem\033[0m"
echo -e "   Dockerfile: \e[96m$docker_file\033[0m"
echo -e ""
sleep 4


echo ""
echo "   Primeiro procurando a Imagem para este projeto: $nome_imagem"
echo ""
echo ""
rm test.tmp

docker -D image inspect $nome_imagem &> test.tmp

qtde_error=$(cat test.tmp | grep "Error" |wc -l)

cat test.tmp

echo "   Procurando imagem"
echo ""
# docker image inspect $nome_imagem
# echo ""
docker image ls $nome_imagem 
echo -e "\e[91m   ERROS encontrados = $qtde_error \033[0m"
echo ""
echo ""
sleep 2
if [ $qtde_error -gt 0 ]
then
	echo -e "\e[93m"
	echo "   Não achou a imagem $nome_imagem"
	echo "   então vai cria a imagem com dockerfile: $docker_file"
	echo "   criando imagem personalizada "
	echo "   executando.... docker build "
	echo -e "\033[0m"
	echo ""
#	sleep 2

    docker-compose kill
    docker-compose down

    #docker build --tag=desenvolvimento:python .

    echo "FAZENDO:     build -f $docker_file -t $nome_imagem ."
    sleep 4
	docker build --file $docker_file -t $nome_imagem .

	echo ""
#	docker image ls $nome_imagem
	docker image ls
	echo ""
	echo ""
#	sleep 4

   #docker create -t -i --name python-dev -p 4000:4000 -v /home/usuario/workspace:/home/user desenvolvimento:python

    #docker create -t -i --name $nome_projeto -p 4000:4000 -v $(pwd)/workspace:/root $nome_imagem

#	docker image ls $nome_imagem

else
	echo "   já existe a imagem $nome_imagem nesta máquina! Eba!!!"
	echo ""
	echo ""
fi

rm test.tmp
docker -D ps &> test.tmp

qtde_name_container=$(cat test.tmp | grep "$nome_imagem" | grep "$nome_projeto" | wc -l)




if [ $qtde_name_container -ge 1 ]
	then


        echo -e "\e[91m   já existe um ou mais conteiners com esse nome em execução, VOU MATAR TODOS!!!!!!! \033[0m"
		sleep 5
		# echo -e "\e[5m"
		echo -e "\e[95m"
		head -1 test.tmp
		cat test.tmp | grep "$nome_imagem" | grep "$nome_projeto"
		echo -e "\033[0m"

		qtde_name_containerX=$(cat test.tmp | grep "$nome_imagem" | grep "$nome_projeto" | wc -l)
		while [ $qtde_name_containerX -gt 0 ]
		do
		    echo "---------"
		    echo -en "\e[91m  ($qtde_name_containerX) MATANDO: \033[0m"
		    linha_vez=$( cat test.tmp | grep "$nome_imagem" | grep "$nome_projeto" | tail -n$qtde_name_containerX | head -1)
            id_da_vez=$(echo -n "$linha_vez" | awk '{ print $1 }')
            docker stop $id_da_vez
		    echo " $linha_vez "
		    qtde_name_containerX=$(( qtde_name_containerX - 1 ))
        done
        echo "---------"

		echo ""
		echo -e ""
		sleep 5

	else
		echo "   OK vai Iniciar docker"
		sleep 1

fi




rm test.tmp
docker -D ps &> test.tmp
qtde_name_container=$(cat test.tmp | grep "$nome_imagem" | grep "$nome_projeto" | wc -l)

data_padrao_docker=$(date "+%Y-%m-%dT%H:%M")

if [ $qtde_name_container -eq 0 ]
	then

		echo "   Iniciando docker"
#		echo "   /usr/local/bin/docker-compose  --compatibility --verbose -p $nome_projeto -f $docker_compose up  -d   "


		echo "   /usr/local/bin/docker-compose --privileged --compatibility --verbose -p $nome_projeto -f $docker_compose up  -d   "

		docker-compose kill
        docker-compose down


		/usr/local/bin/docker-compose -p $nome_projeto -f $docker_compose kill
        /usr/local/bin/docker-compose -p $nome_projeto -f $docker_compose down
#		/usr/local/bin/docker-compose --compatibility --verbose -p $nome_projeto -f $docker_compose up  -d
#		/usr/local/bin/docker-compose --verbose -p $nome_projeto -f $docker_compose up  -d
#		/usr/local/bin/docker-compose --privileged --verbose -p $nome_projeto -f $docker_compose up  -d
		/usr/local/bin/docker-compose --verbose -p $nome_projeto -f $docker_compose up  -d
		sleep 2
		echo ""
		echo ""


#        sudo rm $(pwd)/workspace
#        docker start $nome_projeto

		echo ""
		echo ""
#		sleep 4
		echo ""
		echo ""
		docker ps
		echo ""

	else
		echo -e "\e[91m   Não vai iniciar docker pois já existe um conteiner com esse nome em execução: \033[0m"
		# echo -e "\e[5m"
		echo -e "\e[95m"
		head -1 test.tmp
		cat test.tmp | grep "$nome_imagem" | grep "$nome_projeto"
		echo -e "\033[0m"
		echo -e "\e[91m   Por favor, verifique isso primeiro. \033[0m"
		echo ""
		echo -e ""
#		sleep 10

fi





#docker-compose start   comando é útil apenas para reiniciar contêineres criados anteriormente,






sleep 2
date
#sleep 5
date
sleep 5
echo -e "docker ps"
docker ps
echo -e ""
echo -e ""
echo -e "docker image ls"
docker image ls
#sleep 5

echo -e ""
echo -e ""
echo -e "FIM:"
echo -e "   Dev:        \e[96menio.farias@retentiva.com.br\033[0m "
echo -e "   Projeto:    \e[96m$nome_projeto\033[0m"
echo -e "   Imagem:     \e[96m$nome_imagem\033[0m"
echo -e "   Dockerfile: \e[96m$docker_file\033[0m"
echo -e ""
#sleep 4

#docker logs --since "2021-10-06T16:00" -t -f comercial_001_influencer_captacao_de_cliques_baseimg_1 ;docker ps ;date
#docker logs --since "$data_padrao_docker" -t -f $nome_projeto"_"baseimg_1 ;docker ps ;date
#echo "docker logs --since \"$data_padrao_docker\" -t -f $nome_projeto"_"baseimg_1 ;docker ps ;date"
echo "docker logs --since \"$data_padrao_docker\" -t -f $nome_projeto"_baseimg_1" ;docker ps ;date"
sleep 2
docker logs --since "$data_padrao_docker" -t -f $nome_projeto"_baseimg_1" ;docker ps ;date
echo "docker logs --since \"$data_padrao_docker\" -t -f $nome_projeto"_baseimg_1" ;docker ps ;date"

