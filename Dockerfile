FROM alpine:3.12

RUN apk add --no-cache bash dos2unix

COPY log_generator.sh /usr/local/bin/log-generator.sh

RUN dos2unix /usr/local/bin/log-generator.sh

RUN chmod +x /usr/local/bin/log-generator.sh

ENTRYPOINT ["/bin/bash", "-c", "/usr/local/bin/log-generator.sh"]
