FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install mariadb-server -y
RUN mkdir -p run/mysqld/

COPY ./tools/mari.sh ./mari.sh
COPY conf/mariadb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

CMD ["sh","mari.sh"]