FROM debian:jessie

MAINTAINER Or Elimelech <0r3limelech@gmail.com>

ADD https://github.com/bitly/google_auth_proxy/releases/download/v1.0/google_auth_proxy-1.0.linux-amd64.go1.3.tar.gz /tmp/google_auth_proxy.tgz

WORKDIR /tmp

RUN tar zxf /tmp/google_auth_proxy.tgz \
    && mv google_auth_proxy-1.0.linux-amd64.go1.3/google_auth_proxy /usr/local/bin/ \
    && rm -rf /tmp/google_auth_proxy*

VOLUME ["/config"]

ONBUILD ADD ./google_auth_proxy.cfg /config/google_auth_proxy.cfg

EXPOSE 4180

CMD ["google_auth_proxy", "-c", "/config/google_auth_proxy.cfg"]
