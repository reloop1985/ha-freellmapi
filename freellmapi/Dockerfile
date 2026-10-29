FROM ghcr.io/tashfeenahmed/freellmapi:latest

ENV PORT=3001
ENV FREEAPI_DB_PATH=/app/server/data/freellmapi.db

COPY run.sh /run.sh
RUN chmod 755 /run.sh

CMD ["/run.sh"]
