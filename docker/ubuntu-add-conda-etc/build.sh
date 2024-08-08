docker build \
    --build-arg BASE_IMAGE=${BASE_IMAGE} \
    --build-arg CONDA_VERSION=${CONDA_VERSION} \
    -t pytorch_conda:${IMAGE_TAG} \
    -f docker/ubuntu-add-conda-etc/Dockerfile \
    .
