#!/bin/sh

export BASE_IMAGE=cnstark/pytorch:2.0.0-py3.9.12-cuda11.8.0-ubuntu20.04

export CONDA_VERSION=py38_23.11.0-2-Linux-x86_64

export IMAGE_TAG=2.0.0-py3.8.19-cuda11.8.0-ubuntu20.04-miniconda-202408082152

./docker/ubuntu-add-conda-etc/build.sh
