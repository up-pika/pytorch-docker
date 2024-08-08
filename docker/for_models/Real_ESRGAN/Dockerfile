FROM pytorch_conda:2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-202408082152

COPY docker/for_models/Real_ESRGAN/requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

CMD ["/bin/bash"]