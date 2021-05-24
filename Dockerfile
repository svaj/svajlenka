FROM bitnami/nginx:1.16.1-debian-9-r22

COPY src /app


# https://hub.docker.com/r/bitnami/nginx/dockerfile
EXPOSE 5000 8443
ENV NGINX_HTTP_PORT_NUMBER=5000
WORKDIR /app
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/run.sh" ]
