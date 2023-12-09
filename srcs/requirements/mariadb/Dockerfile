FROM alpine:3.17.6
RUN apk update && apk add mariadb mariadb-client  
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

