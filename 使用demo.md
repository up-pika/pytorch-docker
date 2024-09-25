# 产生build 脚本

python generate_build_script.py --os ubuntu --os-version 22.04 --python 3.10.11 --pytorch 2.3.1 --cuda 11.8 --cuda-flavor devel
将产生sh和pytorch-docker/.github/workflows/docker_build_2.3.1_py3.10.11_cuda11.8.0_devel_ubuntu22.04.yml

执行脚本，打镜像
sh build_2.3.1_py3.10.11_cuda11.8.0_devel_ubuntu22.04.sh

# 打基础镜像

docker tag cnstark/pytorch:2.0.0-py3.9.12-cuda11.8.0-ubuntu20.04 eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.9.12-cuda11.8.0-ubuntu20.04

docker push eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.9.12-cuda11.8.0-ubuntu20.04

# 基于基础镜像添加conda

docker tag pytorch_conda:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-202408082152   eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-202408082152

docker push eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-202408082152

docker tag pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-with-basicsr-202408081050 eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-with-basicsr-202408081050

docker push eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-with-basicsr-202408081050
