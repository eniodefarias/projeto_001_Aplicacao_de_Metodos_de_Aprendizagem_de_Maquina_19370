#Sistema Operacional
#FROM ubuntu:16.04
FROM ubuntu:18.04
# FROM baseimage:bionic-1.0.0


ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV PYTHONUNBUFFERED=1
ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="America/Sao_Paulo"
ENV LANG=pt_BR.UTF-8
ENV LANGUAGE=pt_BR:pt:en
ENV LC_CTYPE="pt_BR.UTF-8"
ENV LC_NUMERIC="pt_BR.UTF-8"
ENV LC_TIME="pt_BR.UTF-8"
ENV LC_COLLATE="pt_BR.UTF-8"
ENV LC_MONETARY="pt_BR.UTF-8"
ENV LC_MESSAGES="pt_BR.UTF-8"
ENV LC_PAPER="pt_BR.UTF-8"
ENV LC_NAME="pt_BR.UTF-8"
ENV LC_ADDRESS="pt_BR.UTF-8"
ENV LC_TELEPHONE="pt_BR.UTF-8"
ENV LC_MEASUREMENT="pt_BR.UTF-8"
ENV LC_IDENTIFICATION="pt_BR.UTF-8"
ENV LC_ALL="pt_BR.UTF-8"

#Diretório do usuário docker
# RUN mkdir -p /home/user
# WORKDIR /home/user


#RUN apt-get update -y && apt-get install -y nano locales init python3-dev python3-pip build-essential python3 && apt-get clean all && locale-gen pt_BR pt_BR.UTF-8
#RUN apt-get update -y && apt-get install -y nano locales init python3-dev python3-pip build-essential python3 && apt-get clean all && locale-gen pt_BR pt_BR.UTF-8 && rm /etc/timezone && ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/timezone &&  dpkg-reconfigure --frontend noninteractive tzdata

# RUN apt-get update -y && apt-get install -y nano locales init python3-dev python3-pip build-essential python3 && apt-get clean all && locale-gen pt_BR pt_BR.UTF-8
# RUN rm /etc/timezone
# RUN ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/timezone
# RUN dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get update -y && apt-get install -y tzdata nano locales init python3-dev python3-pip build-essential python3 && apt-get clean all && locale-gen pt_BR pt_BR.UTF-8
RUN touch /etc/timezone
RUN rm -rf /etc/timezone
RUN ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata




RUN mkdir -p /etc/init.d
# RUN echo '#!/bin/bash' > /etc/my_init.d/logtime.sh && echo 'date > /root/boottime.txt' >> /etc/my_init.d/logtime.sh
# RUN echo '#!/bin/bash' > /etc/init.d/logtime.sh && echo 'date > /home/user/boottime.txt' >> /etc/init.d/logtime.sh
#RUN echo '#!/bin/bash' > /etc/init.d/logtime.sh && echo 'date >> /root/workspace/boottime.txt' >> /etc/init.d/logtime.sh
RUN echo '#!/bin/bash' > /etc/init.d/logtime.sh && echo 'date >> /var/Temp/boottime.txt' >> /etc/init.d/logtime.sh
# RUN chmod +x /etc/my_init.d/logtime.sh
RUN chmod +x /etc/init.d/logtime.sh


# RUN echo '#!/bin/bash' > /etc/init.d/starter.sh && echo 'cd /home/user/projeto' >> /etc/init.d/starter.sh && echo 'sh /home/user/projeto/starter.sh' >> /etc/init.d/starter.sh
#RUN echo '#!/bin/bash' > /etc/init.d/starter.sh  && echo 'chmod 777 /root/workspace/projeto/starter.sh' >> /etc/init.d/starter.sh  && echo 'echo "iniciando /etc/init.d/starter.sh"' >> /etc/init.d/starter.sh && echo 'cd /root/workspace/projeto' >> /etc/init.d/starter.sh && echo 'sh /root/workspace/projeto/starter.sh' >> /etc/init.d/starter.sh
RUN echo '#!/bin/bash' > /etc/init.d/starter.sh  && echo 'chmod 777 /root/workspace/projeto/starter.sh' >> /etc/init.d/starter.sh  && echo 'echo "iniciando /etc/init.d/starter.sh"' >> /etc/init.d/starter.sh  && echo '/root/workspace/projeto/starter.sh' >> /etc/init.d/starter.sh
RUN chmod 777 /etc/init.d/starter.sh

RUN whoami
RUN pwd
# RUN date >> /home/user/dockerfile_create.log
# RUN ls -latrh /home/user
#RUN sleep 10


#Dependências do sistema
#RUN apt-get update -y
#RUN apt-get install -y init
#RUN apt-get install -y init python3-dev python3-pip build-essential python3



# RUN update-initramfs -u
#Pacotes do Python
COPY requirements.txt /requirements.txt

#Atualização do gerenciador de pacotes
RUN pip3 install --upgrade pip

#Instalação dos pacotes listados
# RUN pip3 install -r /requirements.txt
RUN cat /requirements.txt|sort|uniq | xargs -n 1 pip install

#Instalação do pacote jupyter notebook
RUN pip3 install jupyter

RUN whoami
RUN pwd

RUN ls -latrh /sbin/init
RUN ls -latrh /etc/init.d/logtime.sh
RUN ls -latrh /etc/init.d/starter.sh

# Use baseimage-docker's init system.
# CMD ["/sbin/my_init"]

# RUN mkdir -p /root/projeto
# RUN mkdir -p /root
# WORKDIR /root



# CMD ["/sbin/init"]
#CMD ["/etc/init.d/logtime.sh"]

#CMD ["sh","-c","mkdir -p ~/my/new/directory/ && cd ~/my/new/directory && touch new.file"]

CMD ["sh","-c","/etc/init.d/logtime.sh && /etc/init.d/starter.sh"]



# RUN sleep 10
