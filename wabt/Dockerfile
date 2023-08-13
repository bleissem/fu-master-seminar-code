FROM ubuntu:22.04

RUN apt update && apt upgrade -y && apt install -y \
    git \
    cmake \
    make \
    python3 \
    clang \
    build-essential \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/WebAssembly/wabt

WORKDIR /wabt

RUN git checkout 1.0.33 \
    && git submodule update --init \
    && mkdir build

WORKDIR /wabt/build

RUN   cmake .. \
    && cmake --build .
