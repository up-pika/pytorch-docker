ARG BASE_IMAGE

FROM ${BASE_IMAGE}

WORKDIR /app

COPY docker/ubuntu-add-conda-etc/envBase.yaml /app/envBase.yaml 

# 自动选择默认选项，从而避免任何可能的用户交互
ARG DEBIAN_FRONTEND=noninteractive

RUN python -V && \
    apt-get update && \
    apt-get -yq --force-yes install ffmpeg && \ 
    apt-get install -y \
    tzdata \
    vim \
    curl \
    git \  
    cmake \  
    libgl1-mesa-glx \
    libglib2.0-0 && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

ARG CONDA_VERSION 

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-${CONDA_VERSION}.sh && \
    bash Miniconda3-${CONDA_VERSION}.sh -b -p /miniconda3 && \
    rm Miniconda3-${CONDA_VERSION}.sh

ENV PATH=/miniconda3/bin:$PATH

RUN conda env create -f /app/envBase.yaml
RUN conda init bash
RUN conda activate menv & \
    python -c "import torch" & \
    python -V 
ENV PATH=/miniconda3/envs/menv/bin:$PATH

RUN echo "conda activate menv" >> ~/.bashrc \
    && . ~/.bashrc \
    && python -V 

CMD ["/bin/bash"]