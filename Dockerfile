FROM ubuntu

RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
    unzip \
    bat \
    silversearcher-ag \
    neovim && \
    curl -sLf https://spacevim.org/install.sh | bash && \
    curl https://raw.githubusercontent.com/SpaceVim/SpaceVim/master/docker/init.toml > ~/.SpaceVim.d/init.toml

ENTRYPOINT [ "/bin/bash", "-l", "-c" ]