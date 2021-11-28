#!/bin/bash


echo "iniciando starter.sh"
dir="$(cd "$(dirname "$0")" && pwd)"
cd $dir
HOME=/$(whoami)

echo "starter: HOME=$HOME"

export HOME=/$(whoami)
export PATH="$HOME/bin:$PATH"

usermod -m -d /$(whoami) $(whoami)
echo "" >> /var/Temp/url_jupyter.txt
echo "" >> /var/Temp/url_jupyter.txt
echo "------------------------------" >> /var/Temp/url_jupyter.txt
date | tee $dir/url_jupyter.txt  >> /var/Temp/url_jupyter.txt

echo "starter: HOME=$HOME"




echo -n "pwd: "
pwd

echo ""
echo "dir: $dir"


#jupyter notebook --ip 0.0.0.0 --port 4000 --allow-root >> $HOME/url_jupyter.txt
#jupyter notebook --ip 0.0.0.0 --port 4000 --allow-root |& tee -a $HOME/url_jupyter.txt

jupyter notebook --ip 0.0.0.0 --port 4000 --allow-root |& tee -a /var/Temp/url_jupyter.txt


#
#        echo "HOME=$HOME"
#        ls -latrh $HOME/.pyenv/bin
#        export PATH="$HOME/.pyenv/bin:$PATH"
#        eval "$(pyenv init --path)"
#        eval "$(pyenv init -)"
#        eval "$(pyenv virtualenv-init -)"
#
#        pyenv init --path
#        pyenv init -
#        pyenv virtualenv-init -
#
#        echo "PATH=$PATH"
#        which pyenv
#        echo ""
#        echo ""
#        echo ""
#
#
#
#echo ""
#echo ""
#whoami
#echo ""
#who
#echo ""
#ls -latrh ~/
#echo ""
#ls -latrh /home/
#echo ""
#echo "HOME=$HOME"
#echo ""
#echo "HOME2=${HOME}"
#echo ""
#ls -latrh $HOME
#echo ""
#pwd
#echo ""
#cd ~
#echo ""
#pwd
#echo ""
#echo ""
##sleep 15
#
#
#ls -latrh /home/root/
#echo ""
#echo ""
#echo ""
#ls -latrh /home/root/.pyenv
#echo ""
#echo ""
#echo ""
#sleep 15
##rm -rf /.pyenv
##rm -rf /root/.pyenv
##rm -rf /home/root/.pyenv
#
#
#
#
#
#echo ""
#cat /var/lib/dbus/machine-id
#echo ""
#cat /etc/machine-id
#
#pid=$$
#echo ""
#echo "$pid"
#
## caminho_arquivo=$0
## nome_arquivo=$(echo -n "$caminho_arquivo" | /usr/bin/rev | cut -d "/" -f1|/usr/bin/rev)
## dir=$(echo -n "$caminho_arquivo" | sed "s/$nome_arquivo$//g" | sed "s|/$||g" )
## dir=$( echo -n "$PWD" )
#
#echo "-------"
##sleep 20
## source ~/.bashrc
## cd /home/$(whoami)
## chmod +x .bashrc
## touch /home/$(whoami)/.bashrc
## source /home/$(whoami)/.bashrc
## chmod +x /home/$(whoami)/.bashrc.local
## /home/$(whoami)/.bashrc.local
## . /home/$(whoami)/.bashrc.local
## /home/$(whoami)/.bashrc.local
#pwd
## ~/.bashrc
#echo "-------"
#
## sleep 3
#
#dir="$(cd "$(dirname "$0")" && pwd)"
#
#cd $dir
#
#
##rm -rf robo/Adapter/RoboDataFiles/HOME/.pyenv
##rm -rf  robo/Adapter/RoboDataFiles/etc/bash.bashrc
#
#
#echo "1which pyenv= $(which pyenv)"
#
##rm -rf /$(whoami)/.pyenv
##rm -rf /$(whoami)/.pyenv
#
##mkdir -p $dir/robo/Adapter/RoboDataFiles/HOME/.pyenv /$(whoami)
##ln -s $dir/robo/Adapter/RoboDataFiles/HOME/.pyenv /$(whoami)/.pyenv
#
#export PATH="$HOME/bin:$PATH"
#
#echo "2which pyenv= $(which pyenv)"
#
#data_inicio=$(date "+%Y/%m/%d %H:%M:%S")
#
#hora_um_agora=$(( $(date "+%k") + 0 ))
#
#apt-get update && apt-get install -y rsync sudo cifs-utils xvfb python3-wheel liblzma-dev lzma python3-venv liblzma-dev lzma make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
#
##apt update && apt install -y sudo cifs-utils xvfb python3-wheel liblzma-dev lzma
#
#
#
##        rm -rf chromedriver_linux64*  google-chrome*
##	    wget https://github.com/eniodefarias/Chrome_Versions/raw/master/ver90_chromedriver
##	    mv ver90_chromedriver /usr/bin/chromedriver
##
##	    chmod 777 /usr/bin/chromedriver
##
##	    rMUUUUITO GRANDEm -rf chromedriver_linux64*  google-chrome*
##	    wget https://github.com/eniodefarias/Chrome_Versions/raw/master/ver90_google-chrome-stable_current_amd64.deb
##	    dpkg -i ver90_google-chrome-stable_current_amd64.deb
##	    rm -rf ver90_google-chrome-stable_current_amd64.deb chromedriver_linux64*  google-chrome*
#
#
#
# $dir/instal_update_chrome_chromedriver_local_pc.sh 94
#
##sleep 10
## echo "caminho_arquivo: $caminho_arquivo"
## echo "nome_arquivo: $nome_arquivo"
#echo "dir: $dir"
#pwd
#echo "container docker;$pid;$(date "+%Y/%m/%d %H:%M:%S")" | tee -a $dir/robo/Adapter/log/processos.log
#
##apt-get update && apt-get install -y python3-venv liblzma-dev lzma
##apt-get update && apt-get install -y python3-venv liblzma-dev lzma
##apt-get update && apt-get install -y sudo cifs-utils xvfb python3-wheel liblzma-dev lzma python3-venv liblzma-dev lzma make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
#apt-get update && apt-get install -y source
## sleep 1
#
#cd $dir
#pwd
#echo "dir=$dir"
#echo ""
##sleep 15
#
#mkdir -p $dir/relat_libs
#
#
##rm -rf robo/Adapter/RoboDataFiles/HOME robo/Adapter/RoboDataFiles/etc robo/Adapter/RoboDataFiles/raiz
#mkdir -p robo/Adapter/RoboDataFiles/HOME robo/Adapter/RoboDataFiles/etc robo/Adapter/RoboDataFiles/raiz
#
#cp -fvr robo/Adapter/RoboDataFiles/etc/bash.bashrc /etc/
##cp -fvr  robo/Adapter/RoboDataFiles/HOME/.pyenv $HOME/
##rsync -vazh  robo/Adapter/RoboDataFiles/etc/bash.bashrc /etc/
##
##source /etc/bash.bashrc
##/etc/bash.bashrc
##bash /etc/bash.bashrc
#
#pwd
#echo "instalando virtual env"
#
#######################
#
#existe_pyenv1=$( which pyenv | wc -l )
#
#echo ""
#echo ""
#echo "which pyenv1= $(which pyenv)"
#echo "existe_pyenv1=$existe_pyenv1"
#echo ""
#echo ""
#
#
#
#if [ $existe_pyenv1 -eq 0 ]
#    then
#        echo "NÃO existe_pyenv1=$existe_pyenv1"
#        #rm -rf /.pyenv
##        rsync -vazh  robo/Adapter/RoboDataFiles/HOME/.pyenv $HOME/
#        #cp -fvr  robo/Adapter/RoboDataFiles/HOME/.pyenv $HOME/
#        #rsync -vazh  robo/Adapter/RoboDataFiles/raiz/.pyenv /
#        sleep 10
#fi
#
#
#
#
#echo ""
#echo ""
#echo ""
#ls -latrh /etc/bash.bashrc
#
##source /etc/bash.bashrc
##/etc/bash.bashrc
#echo ""
#echo ""
#echo ""
#
#existe_pyenv=$( which pyenv | wc -l )
#
#echo ""
#echo ""
#echo "which pyenv= $(which pyenv)"
#echo "existe_pyenv=$existe_pyenv"
#echo ""
#echo ""
#whoami
#echo ""
#who
#echo ""
#ls -latrh ~/
#echo ""
#ls -latrh /home/
#echo ""
#echo "HOME=$HOME"
#echo ""
#echo "HOME2=${HOME}"
#echo ""
#ls -latrh $HOME
#echo ""
#pwd
#echo ""
#echo ""
#echo ""
#echo ""
##sleep 15
#
#if [ $existe_pyenv -eq 0 ]
#    then
#
##        curl https://pyenv.run | bash
#        apt-get update && apt-get install -y sudo cifs-utils xvfb python3-wheel liblzma-dev lzma python3-venv liblzma-dev lzma make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
#        apt-get update && apt-get install -y source
#
##         rm -rf $HOME/.pyenv
##        cd $HOME
#        cd $dir
#        export PATH="$HOME/bin:$PATH"
#        rm -rf /root/.pyenv
#         curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
#
#
#
#
#            existe_pyenv3=$( which pyenv | wc -l )
#
#            echo ""
#            echo ""
#            echo "which pyenv3= $(which pyenv)"
#            echo "existe_pyenv3=$existe_pyenv3"
#            echo ""
#            echo ""
#            sleep 10
#
#
#
##        cp -fvr  robo/Adapter/RoboDataFiles/HOME/.pyenv $HOME/
#        mkdir -p $HOME/.pyenv/
##        cp -fvr  robo/Adapter/RoboDataFiles/HOME/.pyenv/versions $HOME/.pyenv/versions
##        rsync -avz --progress robo/Adapter/RoboDataFiles/HOME/.pyenv/versions $HOME/.pyenv/versions
#        rsync -avz  robo/Adapter/RoboDataFiles/HOME/.pyenv/versions $HOME/.pyenv/versions
#
#
#        comando1='export PATH="$HOME/bin:$PATH"'
#        qtde_bash1=$(( $(cat /etc/bash.bashrc | grep "$comando1" |wc -l) + 0 ))
#        if [ $qtde_bash1 -eq 0 ]
#            then
#                echo "$comando1" >> /etc/bash.bashrc
#        fi
#
#        comando2='eval "$(pyenv init --path)"'
#        qtde_bash2=$(( $(cat /etc/bash.bashrc | grep "$comando2" |wc -l) + 0 ))
#        if [ $qtde_bash2 -eq 0 ]
#            then
#                echo "$comando2" >> /etc/bash.bashrc
#        fi
#
#        comando3='eval "$(pyenv init -)"'
#        qtde_bash3=$(( $(cat /etc/bash.bashrc | grep "$comando3" |wc -l) + 0 ))
#        if [ $qtde_bash3 -eq 0 ]
#            then
#                echo "$comando3" >> /etc/bash.bashrc
#        fi
#
#        comando4='eval "$(pyenv virtualenv-init -)"'
#        qtde_bash4=$(( $(cat /etc/bash.bashrc | grep "$comando4" |wc -l) + 0 ))
#        if [ $qtde_bash4 -eq 0 ]
#            then
#                echo "$comando4" >> /etc/bash.bashrc
#        fi
#
#
#
##         echo '' >> /etc/bash.bashrc
##         echo '' >> /etc/bash.bashrc
##         echo 'export PATH="$HOME/bin:$PATH"' >> /etc/bash.bashrc
##         echo 'eval "$(pyenv init --path)"' >> /etc/bash.bashrc
##         echo 'eval "$(pyenv init -)"' >> /etc/bash.bashrc
##         echo 'eval "$(pyenv virtualenv-init -)"' >> /etc/bash.bashrc
##         echo '' >> /etc/bash.bashrc
##         echo '' >> /etc/bash.bashrc
#        ###############################3
#
#        #apt-get update && apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
#
##        curl https://pyenv.run | bash
##        apt-get update && apt-get install -y sudo cifs-utils xvfb python3-wheel liblzma-dev lzma python3-venv liblzma-dev lzma make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
##        apt-get update && apt-get install -y source
#
#        existe_pyenv2=$( which pyenv | wc -l )
#
#        echo ""
#        echo ""
#        echo "which pyenv2= $(which pyenv)"
#        echo "existe_pyenv2=$existe_pyenv2"
#        echo ""
#        echo ""
#
#
#
#        if [ $existe_pyenv2 -eq 0 ]
#            then
#                echo "NÃO existe_pyenv2=$existe_pyenv1"
#                #rm -rf /.pyenv
#        #        rsync -vazh  robo/Adapter/RoboDataFiles/HOME/.pyenv $HOME/
#                #cp -fvr  robo/Adapter/RoboDataFiles/HOME/.pyenv $HOME/
#                #rsync -vazh  robo/Adapter/RoboDataFiles/raiz/.pyenv /
#                sleep 10
#        fi
#
#
##        mv /.pyenv /root/
#
#        # sh /etc/bash.bashrc
##        HOME="/home/$(whoami)"
#        echo "HOME=$HOME"
#        ls -latrh $HOME/.pyenv/bin
#        export PATH="$HOME/.pyenv/bin:$PATH"
#        eval "$(pyenv init --path)"
#        eval "$(pyenv init -)"
#        eval "$(pyenv virtualenv-init -)"
#
#        pyenv init --path
#        pyenv init -
#        pyenv virtualenv-init -
#
#        echo "PATH=$PATH"
#        which pyenv
#        echo ""
#        echo ""
#        echo ""
##        sleep 15
#fi
#
#
#existe_pyenv4=$( which pyenv | wc -l )
#
#echo ""
#echo ""
#echo "which pyenv4= $(which pyenv)"
#echo "existe_pyenv4=$existe_pyenv4"
#echo ""
#echo ""
#
#
#existe_versao=$( pyenv versions| grep "3.6.7" |wc -l )
##existe_versao=$( pyenv versions| grep "3.7.10" |wc -l )
#
#echo "versao=$(pyenv versions| grep "3.6.7")"
#echo "existe_versao=$existe_versao"
#
#
#if [ $existe_versao -eq 0 ]
#	then
#	    mkdir -p $HOME/.pyenv/versions
#	    rsync -avz  robo/Adapter/RoboDataFiles/HOME/.pyenv/versions/dados_extracao_importacao_retencao $HOME/.pyenv/versions/
##	pyenv install -v 3.6.7
##	pyenv install -v 3.7.10
#fi
#
#
#
#existe_versao2=$( pyenv versions| grep "3.6.7" |wc -l )
##existe_versao=$( pyenv versions| grep "3.7.10" |wc -l )
#
#echo "versao2=$(pyenv versions| grep "3.6.7")"
#echo "existe_versao2=$existe_versao2"
#
#
#if [ $existe_versao2 -eq 0 ]
#	then
#	pyenv install -v 3.6.7
##	pyenv install -v 3.7.10
#fi
#
#
#
#cd $dir
#echo "fazendo pyenv virtualenv 3.6.7 dados_extracao_importacao_retencao"
#sleep 4
#pyenv virtualenv 3.6.7 dados_extracao_importacao_retencao
##pyenv virtualenv 3.7.10 dados_extracao_importacao_retencao
#pyenv virtualenvs
#pyenv activate dados_extracao_importacao_retencao
#pyenv local dados_extracao_importacao_retencao
#echo "fazendo pip install --upgrade pip"
#pip install --upgrade pip
#
## sleep 3
#
#data_agora=$(date "+%Y/%m/%d %H:%M:%S")
#data_file=$(echo -n "$data_agora"|sed 's|/||g'|sed 's/ //g'|sed 's/\://g')
#
##cat requirements.txt|sort|uniq | xargs -n 1 pip install
##echo "" | tee -a relatorio_libs_instaladas_$data_file.txt >> instalacoes_libs.log
#echo "" | tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt > $dir/relat_libs/instalacoes_libs.log
#echo "-------------------------" | tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt >> $dir/relat_libs/instalacoes_libs.log
##echo "$(date "+%Y/%m/%d %H:%M:%S")" |& tee -a relatorio_libs_instaladas_$data_file.txt >> instalacoes_libs.log
#echo "$data_agora" | tee -a relatorio_libs_instaladas_$data_file.txt >> $dir/relat_libs/instalacoes_libs.log
#
#
#touch libs_instaladas.txt
#
##qtde_linhas=$(cat requirements.txt|sort|uniq|wc -l)
#qtde_linhas=$(cat requirements.txt|wc -l)
#
## qtde_linhas=0
#
#echo "qtde_linhas=$qtde_linhas"
#
#pip list > lista_pip_instalados.txt
#
#while [ $qtde_linhas -gt 0 ]
#do
#	lib_da_vez=$(cat requirements.txt|sort|uniq | tail -n$qtde_linhas | head -1|sed 's/ //g')
#	echo ""
#	echo ""|tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#	echo ""|tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#	echo "-------------"  |tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#	echo "($qtde_linhas)verificando se a lib está instalada: $lib_da_vez"
#
##	pip install $lib_da_vez --ignore-installed | tee -a relatorio_libs_instaladas_$data_file.txt
##	echo ""| tee -a relatorio_libs_instaladas_$data_file.txt
##	echo ""| tee -a relatorio_libs_instaladas_$data_file.txt
##	echo ""| tee -a relatorio_libs_instaladas_$data_file.txt
#
##	a=1
##	if [ $a -eq 0 ]
#	if [ "$lib_da_vez" != "" ]
#	then
#
##		qtde_localizado=$(cat libs_instaladas.txt | grep "^$lib_da_vez$"| wc -l)
#        echo ""  |tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#
##		lib_instalada=$(pip list| grep "^$lib_da_vez ")
#		lib_instalada=$(cat lista_pip_instalados.txt| grep "^$lib_da_vez ")
#
#
#
##		qtde_localizado=$(pip list| grep "^$lib_da_vez "| wc -l)
#		qtde_localizado=$(cat lista_pip_instalados.txt | grep "^$lib_da_vez "| wc -l)
#        echo "__________"
#        echo "($qtde_linhas)verificando se a lib $lib_da_vez está instalada:($qtde_localizado): $lib_instalada" |sed 's/  */ /g' | tee -a relatorio_libs_instaladas_$data_file.txt
#        echo "¨¨¨¨¨¨¨¨¨¨"
#        echo ""
#        echo ""
#
#
#
#
#		if [ $qtde_localizado -eq 0 ]
#		then
##			echo "-------------" |& tee -a relatorio_libs_instaladas_$data_file.txt
#			echo ""  |tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#			echo "($qtde_linhas) instalando lib $lib_da_vez"  | tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#			pip install $lib_da_vez --ignore-installed | tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#			echo "$lib_da_vez"   | tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt >> libs_instaladas.txt
#			echo ""  | tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#			echo ""  | tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#			echo ""  | tee -a $dir/relat_libs/relatorio_libs_instaladas_$data_file.txt
#		# else
#		# 	echo "($qtde_linhas) lib já está instalado: $lib_da_vez"
#		fi
#	fi
#	qtde_linhas=$(( qtde_linhas - 1 ))
#
#
#done
##pip install numpy
#
##date
##pip3 install selenium
##pip3 install pyvirtualdisplay
##pip3 install Selenium-Screenshot
##date
##
##
#date
#pip install selenium
#pip install pyvirtualdisplay
#pip install Selenium-Screenshot
#date
#
#
#
#
#
#pip install --upgrade pip
#
#
##cp -fvr $HOME/.pyenv robo/Adapter/RoboDataFiles/HOME/
##rsync -avz --progress $HOME/.pyenv robo/Adapter/RoboDataFiles/HOME/
##rsync -az --progress $HOME/.pyenv robo/Adapter/RoboDataFiles/HOME/
#nohup rsync -az $HOME/.pyenv robo/Adapter/RoboDataFiles/HOME/ &
##cp -vr /.pyenv robo/Adapter/RoboDataFiles/raiz/
#cp -fvr /etc/bash.bashrc robo/Adapter/RoboDataFiles/etc/
#
#
#
## pip install --upgrade pip
#
## echo "ola mundo1 $(date)" >> /root/projeto/xx.txt
## echo "ola mundo2 $(date)" >> /home/root/projeto/xx.txt
#echo "executar start robo"
#
#
#data_inicio_robos=$(date "+%Y/%m/%d %H:%M:%S")
#echo "<br>iniciado docker: $data_inicio" > body.html
#echo "<br>iniciado verificação pip: $data_agora" >> body.html
#echo "<br>iniciado robos: $data_inicio_robos" >> body.html
#
##nohup $dir/robo/Gateway/start_robo.sh retentiva_015_envia_email_html.py -b "$dir/body.html" -s "Docker 001_extracao_importacao_retencao iniciado - $data_inicio" -a "$dir/relatorio_libs_instaladas_$data_file.txt" -a "$dir/lista_pip_instalados.txt" -a "$dir/robo/Adapter/log/processos.log" -a "$dir/instalacoes_libs.log" &
#
#$dir/robo/Gateway/start_robo.sh retentiva_015_envia_email_html.py -b "$dir/body.html" -s "Docker 001_extracao_importacao_retencao iniciado - $data_inicio" -a "$dir/relat_libs/relatorio_libs_instaladas_$data_file.txt" -a "$dir/lista_pip_instalados.txt" -a "$dir/robo/Adapter/log/processos.log" -a "$dir/relat_libs/instalacoes_libs.log" -a "$dir/libs_instaladas.txt"
#
#loop_infinito=1
#
#echo "A001"
#
#while [ $loop_infinito -eq 1 ]
#    do
#        echo "A002"
#        segundos_inicio=$(date "+%s")
#
#
#        data_ontem=$(date --date="-1 day" "+%d/%m/%Y")
#
#        data_ontem_2=$(date --date="-2 day" "+%d/%m/%Y")
#        data_ontem_3=$(date --date="-3 day" "+%d/%m/%Y")
#
#        dia_do_mes_hoje=$(( $(date "+%e") + 0 ))
#
#        #%u     day of week (1..7); 1 is Monday
#        dia_da_semana_hoje=$(( $(date "+%u") + 0 ))
#
#
#
#
##        echo "FIM"
#        echo "A003"
#        a=0
#        if [ $a -eq 0 ]
#        then
#            echo "A004"
##                if [ $(( $(date "+%k") + 0 )) -eq 7 ]
#                if [ $(( $(date "+%k") + 0 )) -eq 7 ]
#                then
#                    echo "A005"
#                    $dir/robo/Gateway/start_robo.sh dados_bmg_001_extrator_intencionados_liquidados.py -D True -H False -d "$data_ontem"
#                    $dir/robo/Gateway/start_robo.sh dados_bradesco_001_extrator_intencionados_liquidados.py -d "$data_ontem"
#
#
#                    if [ $dia_da_semana_hoje -eq 1 ]
#                        then
#                            echo "A006"
#                            $dir/robo/Gateway/start_robo.sh dados_qlik_001_espelhar_copiar_arquivos.py -d "$data_ontem_3"
#                            $dir/robo/Gateway/start_robo.sh dados_qlik_001_espelhar_copiar_arquivos.py -d "$data_ontem_2"
#                    fi
#                    echo "A007"
#                    $dir/robo/Gateway/start_robo.sh dados_qlik_001_espelhar_copiar_arquivos.py -d "$data_ontem"
#
#                    hora_um_agora=$(( $(date "+%k") + 0 ))
#
#                    while [ $(( $(date "+%k") + 0 )) -le 7 ]
#                        do
#                            echo "A008"
#                            hora_um_agora=$(( $(date "+%k") + 0 ))
#
#                            echo "hora_um_agora $hora_um_agora ainda é menor ou igual a 7. aguarda"
#
#                            sleep 90
#                        done
#                    echo "A009"
#                    hora_um_agora=$(( $(date "+%k") + 0 ))
#                fi
#                echo "A010"
##                while [ $(( $(( $(date "+%k") + 0 )) % 2)) -eq 1 ]
##                    do
##                        impar=$(date "+%k")
##                        echo "$(date): hora impar=$impar"
##                        sleep 60
##                done
#
#
##                if [ $(( $(( $(date "+%k") + 0 )) % 2)) -eq 0 ]
#                if [ $(( $(( $(date "+%k") + 0 )) % 2)) -eq 0 ]
#                    then
#                        echo "A011"
#
#                        if [ $(( $(date "+%k") + 0 )) -ge 8 -a $(( $(date "+%k") + 0 )) -le 20 ]
#                        #if [ $hora_um_agora -ge 8 -a $hora_um_agora -le 22 ]
#                        #if [ $hora_um_agora -ge 24 -a $hora_um_agora -le 0 ]
#                            then
#                                echo "A012"
#
#                                ##Itau = intencionados = 9h, 12h, 16h, 19h
#
#                                if [ $hora_um_agora -eq 8 ]
#                                    then
#                                        echo "A012"
#                                        $dir/robo/Gateway/start_robo.sh dados_itau_004_extrator_intencionados_liquidados.py  -t "QLIK" -D True
#
#                                        if [ $dia_do_mes_hoje -ge 15 ]
#                                            then
#                                                echo "A013"
#                                                $dir/robo/Gateway/start_robo.sh dados_itau_004_extrator_intencionados_liquidados.py  -t "IBCONSIGWEB"  -D True
#                                        fi
#
#                                    else
#                                        $dir/robo/Gateway/start_robo.sh dados_itau_004_extrator_intencionados_liquidados.py  -t "QLIK"  -D True
#
#                                fi
#
#                                echo "A014"
#                                $dir/robo/Gateway/start_robo.sh dados_bmg_001_extrator_intencionados_liquidados.py -D True -H False
#
#
#                                ##Safra = intencionados = 9h, 12h, 16h, 19h ::  igual os de retenção da Retentiva
#                                ##Safra = liquidados = uma vez as 9h
#                                $dir/robo/Gateway/start_robo.sh dados_safra_001_extrator_intencionados_liquidados.py
#
#                                #Pan = intencionados = 30min
#                                $dir/robo/Gateway/start_robo.sh dados_pan_001_extrator_intencionados_liquidados.py
#
#                                #bradesco
#                                $dir/robo/Gateway/start_robo.sh dados_bradesco_001_extrator_intencionados_liquidados.py
#
#                                echo "A015"
#                                if [ $dia_do_mes_hoje -ge 15 ]
#                                    then
#                                        echo "A016"
#                                        #ole
#                                        $dir/robo/Gateway/start_robo.sh dados_ole_001_extrator_liquidados.py
#                                fi
#
#                                #mercantil
#                                $dir/robo/Gateway/start_robo.sh dados_mercantil_001_extrator_intencionados_liquidados.py
#
#                                #daycoval
#                                $dir/robo/Gateway/start_robo.sh dados_daycoval_002_extrator_liquidados.py
#
#                                #espelhar no qlik
#                                $dir/robo/Gateway/start_robo.sh dados_qlik_001_espelhar_copiar_arquivos.py
#
#                                ##storm
#                                $dir/robo/Gateway/start_robo.sh dados_storm_001_importar_bases_Intencionados_Retencao.py
#                                echo "A017"
#                        fi
#                    echo "A018"
#                fi
#            echo "A019"
#        fi
#
#        echo "A020"
#
#        segundos_fim=$(date "+%s")
#        segundos_diferenca=$(( $(date "+%s") - segundos_inicio ))
#
#        #    #    if [ $segundos_diferenca -ge 3600 ]
#        #        if [ $segundos_diferenca -ge 0 ]
#        #            then
#        #                segundos_diferenca=$(( segundos_fim - segundos_inicio ))
#        #    #            while [ $segundos_diferenca -ge 3600 ]
#        ##                while [ $(( $(date "+%s") - segundos_inicio )) -ge 0 ]
#        ##                do
#        ##
#        ##
#        ##                done
#        #            else
#        #                echo "ok. volta para o loop while. segundos_diferenca=$segundos_diferenca <= 0"
#        #
#        #        fi
#
#        segundos_diferenca=$(( segundos_fim - segundos_inicio ))
#        espera_sleep=$(( 3600 - $(( $(date "+%s") - segundos_inicio )) ))
#        segundos_diferenca=$(( segundos_fim - segundos_inicio ))
#        echo "Alerta. segundos_diferenca=$segundos_diferenca > 0  ... Espera: $espera_sleep"
#        echo "A021"
#        if [ $espera_sleep -gt 0 ]
#            then
#                echo "A022"
#                echo "AGUARDA $espera_sleep segundos"
#                sleep $espera_sleep
#        fi
#        echo "A023"
#    echo "A024"
#done
##$dir/robo/Gateway/start_robo.sh dados_qlik_001_espelhar_copiar_arquivos.py
#
#
#
## nohup $dir/s1.sh &
## nohup $dir/s2.sh  &
## nohup $dir/s3.sh  &
#
#echo "fim"
#data_fim_robos=$(date "+%Y/%m/%d %H:%M:%S")
#echo "<br>finalizado robos: $data_fim_robos" >> body.html
#echo "<br><br><br>" >> body.html
#echo "<pre>" >> body.html
#df -h >> body.html
#echo "</pre>" >> body.html
#$dir/robo/Gateway/start_robo.sh retentiva_015_envia_email_html.py -b "$dir/body.html" -s "Fim starter - Docker 001_extracao_importacao_retencao iniciado - $data_inicio" -a "$dir/relat_libs/relatorio_libs_instaladas_$data_file.txt" -a "$dir/lista_pip_instalados.txt" -a "$dir/robo/Adapter/log/processos.log" -a "$dir/relat_libs/instalacoes_libs.log" -a "$dir/libs_instaladas.txt"