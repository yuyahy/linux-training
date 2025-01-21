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

# ユーザ名を定義する変数
ENV USER_NAME ubuntu

# rootではないユーザを作成する
RUN useradd -m -s /bin/bash $USER_NAME

# sudoグループに追加
RUN usermod -aG sudo $USER_NAME

# 作成したユーザにパスワードを設定する
RUN echo "$USER_NAME:$USER_NAME" | chpasswd

# スーパーユーザのパスワードを設定する
RUN echo "root:root" | chpasswd

# ユーザを切り替える
USER $USER_NAME

# 作業ディレクトリをホームディレクトリに設定
WORKDIR /home/$USER_NAME

CMD ["/bin/bash"]

