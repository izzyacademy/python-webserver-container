
FROM nginx:1.15.5-alpine

RUN rm -f /etc/nginx/conf.d/default.conf
RUN rm -f /etc/nginx/nginx.conf

COPY document-root  /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

COPY nginx.default.conf /etc/nginx/conf.d/default.conf


