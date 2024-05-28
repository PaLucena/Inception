FROM debian:bullseye

RUN mkdir -p /var/www/html \
	&& apt-get -y update && apt-get -y upgrade \
	&& apt-get install -y php php-fpm php-mysql \
	&& apt-get install -y wget tar

COPY /tools/wp.sh .
COPY /tools/inception_page.html /var/www/html/inception_page.html

EXPOSE 9000

RUN chmod +x wp.sh
CMD ["sh", "wp.sh"]