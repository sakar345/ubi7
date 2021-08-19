FROM scratch
COPY hello /
USER 1001
EXPOSE 8080
ENTRYPOINT ["./bin/www"]
CMD ["/hello"]
