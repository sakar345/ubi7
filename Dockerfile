FROM ubuntu:latest
RUN apt-get update && apt-get install iputils-ping
ENTRYPOINT ["tail", "-f", "/dev/null"]
