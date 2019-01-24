FROM kannkyo/nexus-repository-apt:latest

ENV NEXUS_BACKUP=/nexus-backup

USER root
RUN mkdir -p $NEXUS_BACKUP \
 && chown nexus:nexus $NEXUS_BACKUP

USER nexus
