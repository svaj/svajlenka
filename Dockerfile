FROM bitnami/nginx:1.16.1-debian-9-r22

RUN mkdir -p /app
COPY www /app


# https://hub.docker.com/r/bitnami/nginx/dockerfile
EXPOSE 8080 8443

WORKDIR /app
USER 1001
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/run.sh" ]
