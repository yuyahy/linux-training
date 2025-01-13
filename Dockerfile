FROM ubuntu:22.04

# タイムゾーンを非対話的に設定
ENV TZ=Asia/Tokyo
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 基本的なアップデートとツールのインストール
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    sudo \
    net-tools \
    iputils-ping \
    less \
    plocate \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

