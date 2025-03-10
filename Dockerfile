# This image is used as a wrapper of entrypoint scripts of other containers.
FROM scratch

# Set current directory
WORKDIR /

# Pick all bash scripts
COPY *.sh .

# Provide metadata as labels
ARG IMAGE_VERSION
ARG IMAGE_REVISION
LABEL org.opencontainers.image.authors="uliege@cytomine.org" \
      org.opencontainers.image.url="https://uliege.cytomine.org/" \
      org.opencontainers.image.documentation="https://doc.uliege.cytomine.org/" \
      org.opencontainers.image.source="https://github.com/Cytomine-ULiege/Cytomine-docker-entrypoint-scripts" \
      org.opencontainers.image.vendor="Cytomine ULiège" \
      org.opencontainers.image.version="${IMAGE_VERSION}" \
      org.opencontainers.image.revision="${IMAGE_REVISION}"

# No ENTRYPOINT nor CMD, this container is not meant to run.