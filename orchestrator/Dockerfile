FROM nginx:1.27-alpine

COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css
COPY app.js /usr/share/nginx/html/app.js
COPY write-config.sh /docker-entrypoint.d/40-write-config.sh

RUN chmod +x /docker-entrypoint.d/40-write-config.sh
