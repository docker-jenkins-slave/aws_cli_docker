FROM jenkinsslave/base_jdk8

MAINTAINER adam v0.2

RUN apt-get update && \
    apt-get install -y \
        groff \
        curl \
        && \
    rm -rf /var/lib/apt/lists/*

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    pip install awscli && \
    rm get-pip.py

