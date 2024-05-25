FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade \
	&& apt-get -y install mariadb-server \
	&& mkdir -p /run/mysqld/ 

COPY ./tools/mari.sh /mari.sh
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d

EXPOSE 3306

RUN chmod +x mari.sh
CMD ["sh", "mari.sh"]