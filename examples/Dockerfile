FROM ubuntu:22.04 as base

# install basic class dependencies
RUN apt update
RUN apt install -y \
    gcc \
    clang \
    cmake \
    make \
    kmod \
    linux-headers-generic

RUN gcc --version
RUN clang --version
RUN cmake --version
RUN make --version
RUN kmod --version

# install editors
RUN apt install -y \
    vim \
    nano \
    neovim

RUN KERNEL_HEADERS_DIR=$(find /usr/src/ -maxdepth 1 -name 'linux-headers-*' -not -name '*-generic'); \
    ln -s ${KERNEL_HEADERS_DIR}/include/asm-generic ${KERNEL_HEADERS_DIR}/include/asm

RUN mkdir -p /workdir
WORKDIR /workdir
