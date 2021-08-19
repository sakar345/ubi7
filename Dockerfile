FROM alpine:3.14

# ensure www-data user exists
RUN set -x \
	&& adduser -u 82 -D -S -G www-data www-data
# 82 is the standard uid/gid for "www-data" in Alpine
# https://git.alpinelinux.org/cgit/aports/tree/main/apache2/apache2.pre-install?h=v3.14.0
# https://git.alpinelinux.org/cgit/aports/tree/main/lighttpd/lighttpd.pre-install?h=v3.14.0
# https://git.alpinelinux.org/cgit/aports/tree/main/nginx/nginx.pre-install?h=v3.14.0

ENV HTTPD_PREFIX /usr/local/apache2
ENV PATH $HTTPD_PREFIX/bin:$PATH
RUN mkdir -p "$HTTPD_PREFIX" \
	&& chown www-data:www-data "$HTTPD_PREFIX"
WORKDIR $HTTPD_PREFIX

ENV HTTPD_VERSION 2.4.48
ENV HTTPD_SHA256 1bc826e7b2e88108c7e4bf43c026636f77a41d849cfb667aa7b5c0b86dbf966c

# https://httpd.apache.org/security/vulnerabilities_24.html
ENV HTTPD_PATCHES=""

# see https://httpd.apache.org/docs/2.4/install.html#requirements


COPY httpd-foreground /usr/local/bin/

EXPOSE 80
CMD ["httpd-foreground"]
