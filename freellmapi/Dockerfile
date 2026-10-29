FROM ghcr.io/tashfeenahmed/freellmapi:latest

USER root

ENV PORT=3001
ENV FREEAPI_DB_PATH=/app/server/data/freellmapi.db

COPY --chmod=755 run.sh /run.sh

CMD ["/run.sh"]
