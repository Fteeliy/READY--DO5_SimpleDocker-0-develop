
FROM nginx:latest

WORKDIR /home/

RUN \
touch /var/run/nginx.pid && \
chown -R nginx:nginx /var/ && \
chown -R nginx:nginx /usr/bin/ && \
chmod 777 /var/run/nginx.pid && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* && \
apt-get update && \
apt-get -y install libfcgi-dev spawn-fcgi && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY run.sh /run.sh

RUN chmod +x /run.sh
ENTRYPOINT /run.sh
CMD ["/run.sh"]

USER nginx
HEALTHCHECK NONE
