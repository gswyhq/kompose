
# 将docker-compose.yml转换为kubernetes的相应文件

$ docker build -t gswyhq/kompose:v1.18.0 -f Dockerfile .

$ docker run -it --rm -v $PWD:/tmp gswyhq/kompose:v1.18.0 kompose convert -f /tmp/docker-compose.yaml


