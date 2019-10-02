FROM bitnami/nginx:1.16.1-debian-9-r22

COPY src /app


# https://hub.docker.com/r/bitnami/nginx/dockerfile
EXPOSE 8080 8443

WORKDIR /app
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/run.sh" ]
