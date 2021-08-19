FROM scratch
COPY hello /
USER root
EXPOSE 8080
ENTRYPOINT ["./bin/www"]
CMD ["/hello"]
