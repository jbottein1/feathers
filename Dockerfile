############################
# Final container
############################
FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops
USER ops:9999

ADD --chown=ops:9999 package.json .
ADD --chown=ops:9999 src src
ADD --chown=ops:9999 public public
ADD --chown=ops:9999 config config

RUN npm install --production

