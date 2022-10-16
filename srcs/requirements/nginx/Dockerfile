# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: c2h6 <esafar@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/13 12:22:12 by c2h6              #+#    #+#              #
#    Updated: 2022/09/15 10:52:18 by c2h6             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Define from which image vm gonna be built
FROM	debian:buster

#Install nginx and openssl
RUN	apt-get update && apt-get install -y nginx openssl

EXPOSE	443

COPY	./conf/default /etc/nginx/site-enabled/default
COPY	./script/script.sh /var/www

CMD	bash /var/www/start.sh
