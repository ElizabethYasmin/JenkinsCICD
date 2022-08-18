FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install nginx -y

ARG NAME
ENV NAME=${NAME}

RUN rm -rf /var/www/html/index.nginx-debian.html
COPY dist/ /var/www/html/

EXPOSE 80:80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
