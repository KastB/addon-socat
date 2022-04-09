ARG BUILD_FROM
ARG BUILD_ARCH

FROM $BUILD_FROM
LABEL maintainer="kastbernd@gmx.de"

RUN apt-get update && apt-get install -y socat jq
COPY run.sh /
RUN chmod +x /run.sh
CMD ["/run.sh"]
