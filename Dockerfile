FROM scratch
COPY hello /
USER root
CMD ["/hello"]
