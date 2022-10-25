# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esafar <esafar@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/13 12:22:12 by c2h6              #+#    #+#              #
#    Updated: 2022/10/25 17:39:57 by esafar           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Define from which image vm gonna be built
FROM	debian:buster

#Install nginx and openssl
RUN	apt-get update && apt-get install -y nginx openssl

EXPOSE	443

# RUN     rm -rf /etc/ssl/private
# RUN     mkdir -p /etc/ssl/private

RUN     openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=FR/ST/Paris/L=Paris/O=wordpress/CN=esafar.42.fr"
COPY	./conf/default /etc/nginx/sites-enabled/default

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
