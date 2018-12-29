FROM sonatype/nexus3:latest

ENV TZ=Asia/Tokyo

ENV NEXUS_BACKUP=/nexus-backup

USER root
RUN mkdir -p $NEXUS_BACKUP \
 && chown nexus:nexus $NEXUS_BACKUP

USER nexus

