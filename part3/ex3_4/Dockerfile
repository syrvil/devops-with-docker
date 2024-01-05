FROM docker:latest

# Docker in Docker runs on Alpine Linux
# Install bash and git
RUN apk --no-cache add \
    bash \
    git

COPY image_builder.sh /usr/bin/image_builder.sh

RUN chmod +x /usr/bin/image_builder.sh

# Script gets arguments from docker run command
ENTRYPOINT ["image_builder.sh"]
