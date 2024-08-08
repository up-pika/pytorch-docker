# 打基础镜像

docker tag cnstark/pytorch:2.0.0-py3.9.12-cuda11.8.0-ubuntu20.04 eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.9.12-cuda11.8.0-ubuntu20.04

docker push eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.9.12-cuda11.8.0-ubuntu20.04

# 基于基础镜像添加conda

docker tag pytorch_conda:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-202408082152   eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-202408082152

docker push eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-202408082152 


docker tag pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-with-basicsr-202408081050 eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-with-basicsr-202408081050

docker push eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/task-executor/pytorch:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-with-basicsr-202408081050