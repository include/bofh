FROM ubuntu:14.04
MAINTAINER include <francisco.cabrita@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -yq upgrade && \
    apt-get -yq install \
    build-essential \
    software-properties-common \
    python-software-properties \
    python-pip \
    python-simplejson \
    automake \
    autoconf \
    flex \
    curl \
    wget \
    gawk \
    bison \
    openssl \
    gettext \
    pngcrush \
    imagemagick \
    ncurses-dev \
    binutils-doc \
    zlib1g \
    libtool \
    libxml2 \
    libc6-dev \
    libpq-dev \
    libssl-dev \
    libffi-dev \
    zlib1g-dev \
    libyaml-dev \
    libgdbm-dev \
    libxml2-dev \
    libxslt-dev \
    libxslt1-dev \
    libgnutls-dev \
    libexpat1-dev \
    libghc-zlib-dev \
    libreadline6-dev \
    libmagickwand-dev \
    libcurl4-gnutls-dev \
    git \
    zip \
    mtr \
    ntp \
    lsof \
    htop \
    tmux \
    dstat \
    socat \
    iotop \
    rsync \
    telnet \
    rlwrap \
    ntpdate \
    sysstat \
    vim-tiny \
    traceroute \
    libsqlite3-dev \
    sqlite3 \
    postgresql-client \
    nodejs \
    nodejs-dev \
    npm && \
    echo "--- redis ---" && \
    apt-add-repository -y ppa:rwky/redis && \
    apt-get update -y && \
    apt-get -yq install redis-tools && \
    pip install awscli && \
    echo "--- cleanup ---" && \
    apt-get -yq autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/lists/*
