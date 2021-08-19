FROM scratch
RUN useradd -ms /bin/bash admin
COPY hello /app
WORKDIR /app
RUN chown -R admin:admin /app
RUN chmod 755 /app
USER admin
CMD ["/hello"] 
