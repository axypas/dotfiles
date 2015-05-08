FROM ubuntu:latest

# environment variables
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y vim git wget fontconfig \
    silversearcher-ag \ 
    libboost-all-dev software-properties-common g++ build-essential cmake python-dev  # for YouCompleteMe

RUN useradd dev && \
    echo "ALL            ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    cp /usr/share/zoneinfo/America/Los_Angeles /etc/localtime && \
    dpkg-reconfigure locales && \
    locale-gen en_US.UTF-8 && \
    /usr/sbin/update-locale LANG=en_US.UTF-8

WORKDIR /home/dev
ENV HOME /home/dev
ENV LC_ALL en_US.UTF-8

RUN chown -R dev:dev $HOME
USER dev

# Setup neobundlepathogen vim plugin manager
RUN curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh && vim +NeoBundleInstall +qall
ADD vim/vimrc        .vimrc

RUN vim +NeoBundleInstall +qall
CMD vim
