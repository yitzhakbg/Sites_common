FROM gliderlabs/alpine:latest
MAINTAINER Yitzhak Bar Geva <yitzhakbargeva@gmail.com>

ENV CADDY_VERSION=0.8.1
ENV HUGO_VERSION=0.15
RUN apk add --update wget ca-certificates bash git rsync sudo && \
#
# Use local copy (inside utils which is mapped to /usr/local/bin) of hugo until version 0.16 comes out.
#
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/bin/hugo && \
  rm -r hugo_${HUGO_VERSION}_linux_amd64 && \
  curl https://getcaddy.com | bash -s git,search && \
  wget http://nl.alpinelinux.org/alpine/edge/testing/x86_64/entr-3.3-r0.apk && apk add --allow-untrusted entr-3.3-r0.apk && \
  rm -fr entr-3.3-r0.apk && \
#  mkdir -p /var/www/levpoem/src /var/www/levpoem/srv /var/www/levpoem/static /var/www/levpoem/themes /usr/local/bin /tmp/hpublic /tmp/epublic
#  wget https://caddyserver.com/download/build?os=linux&arch=amd64&features=git/caddy_linux_amd64_custom.tar.gz && \
#  wget https://github.com/mholt/caddy/releases/download/v${CADDY_VERSION}/caddy_linux_amd64.tar.gz && \
#  tar xzf caddy_linux_amd64.tar.gz && \
#  rm -r caddy_linux_amd64.tar.gz CHANGES.txt LICENSES.txt README.txt && \
#  mv caddy /usr/bin && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/* && \
  git clone --depth=5 https://github.com/yitzhakbg/heartbt /var/www/src/heartbt && \
  git clone --depth=5 https://github.com/yitzhakbg/levpoem /var/www/src/levpoem && \
  mkdir -p /tmp/epublic /tmp/hpublic /var/www/srv/heartbt /var/www/srv/levpoem  #/var/www/src

# COPY ./Caddyfile /Caddyfile
# COPY caddy /usr/bin
EXPOSE 80 443 2015
# USER  22015
# WORKDIR /var/www/html
# WORKDIR /
# COPY letsencrypt /etc/letsencrypt
# COPY /etc/letsencrypt/live/heartbt.co.il/privkey.pem /etc/letsencrypt/live/heartbt.co.il/privkey.pem
ENTRYPOINT ["/usr/local/bin/caddy"]
# ENTRYPOINT ["/bin/sleep"]
# CMD ["40000"]
#
# Staging directory is used during testing phase when there are frequent certificate requests
#
# CMD ["-agree=true", "-conf=/etc/caddy/Caddyfile", "-log=/var/log/caddy.log", "-ca=https://acme-staging.api.letsencrypt.org/directory", "-email=yitzhakbargeva@gmail.com"]
CMD ["-agree=true", "-conf=/etc/caddy/Caddyfile", "-log=/var/log/caddy.log", "-email=yitzhakbargeva@gmail.com"]
