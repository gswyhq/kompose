FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl

WORKDIR /tmp

ENV LANG C.UTF-8

RUN echo "alias date='date +\"%Y-%m-%d %H:%M:%S\"'" >> ~/.bashrc
RUN echo "export TERM=xterm" >> ~/.bashrc
RUN echo "export PATH=/bin/bash:$PATH" >> ~/.bashrc

RUN curl -L https://github.com/kubernetes/kompose/releases/download/v1.18.0/kompose-linux-amd64 -o kompose \
        && chmod +x kompose \
        && mv ./kompose /usr/local/bin/kompose

#EXPOSE 8000

CMD [ "/bin/bash"]

# $ docker build -t kompose:v1.18.0 -f Dockerfile .
# $ docker run -it --rm -v $PWD:/tmp kompose:v1.18.0 kompose convert -f /tmp/docker-compose.yaml

