FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install nginx -y

RUN rm -rf /var/www/html/index.nginx-debian.html
COPY ./login/dist/ /var/www/html/

EXPOSE 80:80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
# FROM nginx:latest
# COPY ./index.html /usr/share/nginx/html/index.html
# COPY ./rsc /usr/share/nginx/html/rsc/
