#!/usr/bin/env bash
# Maintained by H.H

nvidia-docker run --name=tensorcvpclak2 \
    -p 8888:8888 \
    -p 6006:6006 \
    -v /media/hamidhekmatian/My4TBHD1/Datasets:/notebooks/dataset \
    -v /media/hamidhekmatian/My4TBHD1/projects/DenseDepth:/notebooks/project \
    -it \
    -e DISPLAY=unix$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    hamidhekmatian/tensorflow:pytorch \
    bash

