# 命令
1. 打基础镜像
cd /home/PJLAB/wuhuilan/pj/pytorch-docker/docker/for_models/i2v_venhancer

sudo docker build -t conda-pytorch:2.3.1-py3.10.11-cuda11.8.0-devel-ubuntu22.04 -f DockerfileBase .

2. 打镜像
   
sudo docker