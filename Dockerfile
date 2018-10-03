
FROM python:2.7.15-alpine

COPY document-root /document-root

COPY docker-entrypoint.sh /

WORKDIR /document-root/

RUN chmod 0775 /docker-entrypoint.sh

EXPOSE 8850

CMD ["python", "-m", "SimpleHTTPServer", "8850"]
