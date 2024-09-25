FROM eng-center-registry.cn-shanghai.cr.aliyuncs.com/cloud/i2v/base:v0.0.2

WORKDIR /app
# RUN conda install pytorch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1 pytorch-cuda=11.8 -c pytorch -c nvidia -y  \&& 
RUN /miniconda/envs/i2v/bin/pip install diffusers==0.30.3 fairscale==0.4.13 transformers==4.25.1 einops==0.3.0  torchdiffeq==0.2.4 pandas==2.0.0 decord==0.6.0 marshmallow==3.22.0 python-dotenv==1.0.1  coloredlogs==15.0.1  easydict==1.13  accelerate==0.34.2 lightning==2.4.0  omegaconf==2.1.1 opencv-python==4.10.0.84 imageio==2.35.1 imageio-ffmpeg==0.5.1 pillow==10.3.0 loguru==0.5.3 oss2==2.15.0 pydantic==2.4.2 pydantic-settings==2.1.0 PyYAML==6.0 ruamel.yaml==0.17.35 -i https://mirrors.cloud.tencent.com/pypi/simple\
    && conda install pytorch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1 pytorch-cuda=11.8 -c pytorch -c nvidia -y

RUN pip show torch

RUN git clone https://github.com/NVIDIA/apex \
    && cd apex \
    && git checkout 22.04-dev \
    && /miniconda/envs/i2v/bin/python setup.py install --cuda_ext --cpp_ext \
    && pip install flash-attn --no-build-isolation \
    && pip install open-clip-torch==2.12.0

CMD ["/bin/bash"]
