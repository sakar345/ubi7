FROM ubuntu:latest
RUN apt-get update -y && apt-get install iputils-ping -y
USER root
ENTRYPOINT ["tail", "-f", "/dev/null"]
