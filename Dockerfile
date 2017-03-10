FROM volgenic/ubuntu-service:latest

LABEL maintainer "git@brennancheung.com"

RUN apt-get update && apt-get install -y mariadb-server

RUN rm -rf /etc/mysql/*

RUN mkdir -p /var/run/mysqld/

RUN touch /var/run/mysqld/mysqld.sock

COPY my.cnf /etc/mysql/

ENTRYPOINT ["/usr/sbin/mysqld", "--skip-grant-tables"]
