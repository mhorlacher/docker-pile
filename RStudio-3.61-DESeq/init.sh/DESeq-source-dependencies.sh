#!/bin/bash

# install various dependencies for DESeq R-packages
apt-get update -qq && apt-get -y --no-install-recommends install \
	libxml2-dev \
	libxt-dev \
	libjpeg-dev \
	libglu1-mesa-dev \
	libcairo2-dev \
	libsqlite3-dev \
	libmariadbd-dev \
	libmariadb-client-lgpl-dev \
	libpq-dev \
	libmagick++-dev \
	libssh2-1-dev \
	libssl-dev \
	libcurl4-openssl-dev \
	libnss3 \
	libclang-dev \
	libxext6 \
	libxtst6 \
	unixodbc-dev \
	cargo \
	wget \
	bzip2 \
    zlib1g-dev \
    libxml2-dev

# install htslib
cd /usr/bin && \
wget https://github.com/samtools/htslib/releases/download/1.9/htslib-1.9.tar.bz2 && \
tar -vxjf htslib-1.9.tar.bz2 && \
cd htslib-1.9 && \
make

