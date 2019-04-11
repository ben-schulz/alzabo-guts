#!/bin/bash                                                                                                                          

yum install emacs --assumeyes
yum install bzip2 --assumeyes
yum install wget --assumeyes

conda_installer_archive='https://repo.anaconda.com/miniconda'
conda_installer_name='Miniconda3-latest-Linux-x86_64.sh'
conda_installer_url="$conda_installer_archive/$conda_installer_name"

wget $conda_installer_url

bash $conda_installer_name

source ~/.bashrc

conda activate
conda install pytorch-cpu torchvision-cpu -c pytorch --yes
conda install matplotlib --yes
