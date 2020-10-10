FROM ubuntu

RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    neovim

ENTRYPOINT [ "/bin/bash" ]