FROM debian:bullseye

RUN mkdir -p /var/www/html \
	&& apt-get -y update && apt-get -y upgrade \
	&& apt-get install -y php-fpm php-mysql \
	&& apt-get install -y wget tar \
	&& wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz \
	&& tar -xzf /tmp/wordpress.tar.gz -C /var/www/html

COPY /tools/wp.sh .

EXPOSE 9000

RUN chmod +x wp.sh
CMD ["sh", "wp.sh"]