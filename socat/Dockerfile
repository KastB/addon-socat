ARG BUILD_FROM
ARG BUILD_ARCH

FROM $BUILD_FROM
LABEL maintainer="kastbernd@gmx.de"

RUN apt-get update && apt-get install -y socat
CMD ["/usr/bin/socat", "pty,link=$PORT,waitslave", "tcp:$SERVER:$PORT,reuseaddr"]
