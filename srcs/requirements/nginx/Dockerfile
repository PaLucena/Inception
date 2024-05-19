FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade \
	&& apt-get -y install nginx \
	&& apt-get -y install openssl

COPY ./tools/nginx.sh .
COPY ./conf/nginx.conf etc/nginx/nginx.conf

EXPOSE 443

RUN chmod +x nginx.sh
CMD ["sh", "nginx.sh"]