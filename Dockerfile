FROM nginx

MAINTAINER Ron Sengupta

ENV LANG C.UTF-8

#RUN mkdir -p /etc/nginx/sites-enabled
RUN mkdir -p /var/www/html
RUN mkdir -p /etc/nginx/ssl


COPY default /etc/nginx/conf.d/default.conf
COPY nginx-selfsigned.crt /etc/nginx/ssl/nginx.crt
COPY nginx-selfsigned.key /etc/nginx/ssl/nginx.key


RUN echo "The Web Server is Running" > /var/www/html/index.html



# Define default command.

CMD ["nginx", "-g", "daemon off;"]


# Expose ports.

EXPOSE 443
#EXPOSE 80

