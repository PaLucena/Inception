FROM debian:bullseye

RUN mkdir -p /var/www \
	&& apt-get -y update && apt-get -y upgrade \
	&& apt-get install -y php php-fpm php-mysql \
	&& apt-get install -y wget tar

COPY /tools/wp.sh .

EXPOSE 9000

RUN chmod +x wp.sh
CMD ["sleep", "1000"]