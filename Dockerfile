FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install nginx -y

#ARG NODE_ENV
#ENV NODE_ENV=${NODE_ENV}

RUN rm -rf /var/www/html/index.nginx-debian.html
COPY ./login/dist/ /var/www/html/index.html

EXPOSE 80:80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
