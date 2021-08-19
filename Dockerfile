FROM ubuntu:latest
apt-get update && apt-get install iputils-ping
ENTRYPOINT ["tail", "-f", "/dev/null"]
