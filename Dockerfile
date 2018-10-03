
FROM python:2.7.15-alpine

COPY document-root /document-root/

COPY docker-entrypoint.sh /

RUN chmod 0775 /docker-entrypoint.sh

EXPOSE 8000 8001

CMD ["python", "-m", "SimpleHTTPServer", "8000"]
