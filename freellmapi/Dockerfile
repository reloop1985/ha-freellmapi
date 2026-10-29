FROM ghcr.io/tashfeenahmed/freellmapi:latest

USER root

ENV PORT=3001
ENV FREEAPI_DB_PATH=/data/freellmapi.db

COPY --chmod=755 run.sh /run.sh

ENTRYPOINT ["/bin/sh", "/run.sh"]
