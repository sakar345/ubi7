FROM ubuntu:latest
RUN apt-get update -y && apt-get install iputils-ping -y
ENTRYPOINT ["tail", "-f", "/dev/null"]
