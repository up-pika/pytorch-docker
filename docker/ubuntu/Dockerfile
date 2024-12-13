ARG BASE_IMAGE

FROM ${BASE_IMAGE}

ENV NVIDIA_DRIVER_CAPABILITIES=${NVIDIA_DRIVER_CAPABILITIES:-compute,utility}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata
ENV TZ=Asia/Shanghai

RUN apt update && \
    apt install -y \
    net-tools \ 
    wget \
    vim \
    git \
    curl \
    build-essential \
    zlib1g-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libssl-dev \
    libreadline-dev \
    libffi-dev \
    libsqlite3-dev \
    libbz2-dev \
    liblzma-dev && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

ARG PYTHON_VERSION

RUN cd /tmp && \
    wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz && \
    tar -xvf Python-${PYTHON_VERSION}.tgz && \
    cd Python-${PYTHON_VERSION} && \
    ./configure --enable-optimizations && \
    make && make install && \
    cd .. && rm Python-${PYTHON_VERSION}.tgz && rm -r Python-${PYTHON_VERSION} && \
    ln -s /usr/local/bin/python3 /usr/local/bin/python && \
    ln -s /usr/local/bin/pip3 /usr/local/bin/pip && \
    python -m pip install --upgrade pip && \
    rm -r /root/.cache/pip

ARG PYTORCH_VERSION
ARG PYTORCH_VERSION_SUFFIX
ARG TORCHVISION_VERSION
ARG TORCHVISION_VERSION_SUFFIX
ARG TORCHAUDIO_VERSION
ARG TORCHAUDIO_VERSION_SUFFIX
ARG PYTORCH_DOWNLOAD_URL


RUN echo 'xixi' && \
    pip install \
    torch==${PYTORCH_VERSION} \
    torchvision==${TORCHVISION_VERSION} \
    torchaudio==${TORCHAUDIO_VERSION} \
    --index-url https://download.pytorch.org/whl/cu118 \
    && rm -r /root/.cache/pip
# RUN if [ ! $TORCHAUDIO_VERSION ]; \
#     then \
#     TORCHAUDIO=; \
#     else \
#     TORCHAUDIO=torchaudio==${TORCHAUDIO_VERSION}; \
#     fi && \
#     if [ ! $PYTORCH_DOWNLOAD_URL ]; \
#     then \
#     pip install \
#     torch==${PYTORCH_VERSION}\
#     torchvision==${TORCHVISION_VERSION} \
#     ${TORCHAUDIO}; \
#     else \
#     echo 'xixi' && \
#     pip install \
#     torch==${PYTORCH_VERSION} \
#     torchvision==${TORCHVISION_VERSION} \
#     ${TORCHAUDIO} \
#     --index-url https://download.pytorch.org/whl/cu118 \
#     -f ${PYTORCH_DOWNLOAD_URL}; \
#     fi && \
#     rm -r /root/.cache/pip

WORKDIR /workspace
