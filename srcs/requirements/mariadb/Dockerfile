# syntax=docker/dockerfile:1.3
FROM alpine:3.17.5
RUN apk update && apk add mariadb mariadb-client  
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

COPY --chmod=644 conf/my.cnf /etc/my.cnf
COPY --chmod=644 conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY --chmod=755 tools/docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["mariadbd-safe"]
