# linux-training
[新しいLinuxの教科書　第２版](https://www.amazon.co.jp/%E6%96%B0%E3%81%97%E3%81%84Linux%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8-%E7%AC%AC%EF%BC%92%E7%89%88-%E4%B8%89%E5%AE%85-%E8%8B%B1%E6%98%8E-ebook/dp/B0CW1MW6HB/ref=cm_cr_arp_d_product_top?ie=UTF8)の成果物を管理するリポジトリ

## TODO
- [x] Dockerで開発環境を作成する

## Getting Started

### 1. Build the Docker image

```bash
docker build -t linux-training .

```

### 2. Run the Docker container

```bash
 docker run -v $(pwd)/session.log:/session.log -v $(pwd)/work:/work -it linux-training
 ```

### 3. Start saving the command logs and finish it

```bash
script -q session.log
exit
```
