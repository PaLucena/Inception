FROM debian:bullseye

RUN mkdir -p /var/www/html
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y php-fpm php-mysql curl
RUN apt-get install -y wget tar

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
RUN tar -xzf /tmp/wordpress.tar.gz -C /var/www/html

COPY /tools/wp.sh .

EXPOSE 9000

CMD ["sh", "wp.sh"]