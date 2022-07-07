FROM python:3.8-buster

RUN apt-get update

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 
 
RUN bash ./Miniconda3-latest-Linux-x86_64.sh -b -p /root/miniconda

RUN rm ./Miniconda3-latest-Linux-x86_64.sh

RUN /root/miniconda/bin/conda create -y -n py38 python=3.8

RUN /root/miniconda/bin/conda init bash

ADD install_stuff.sh .

RUN bash -v ./install_stuff.sh

CMD ["/bin/bash"]

