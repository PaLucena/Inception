FROM debian:bullseye

RUN apt-get update -y && apt-get install mariadb-server -y

COPY conf/mariadb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306