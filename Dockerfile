ARG ARCH=
FROM ${ARCH}busybox:1.33

VOLUME /data

RUN addgroup -g 4242 -S qumine \
&& adduser -h /home/qumine/ -G qumine -S -D -u 4242 qumine

COPY templater.sh /home/qumine/templater.sh

USER qumine
WORKDIR /home/qumine/
ENTRYPOINT [ "templater.sh"]