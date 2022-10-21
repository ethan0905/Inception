# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: c2h6 <esafar@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/13 12:22:12 by c2h6              #+#    #+#              #
#    Updated: 2022/10/21 15:58:51 by esafar           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN	apt-get update && apt-get install -y php7.3 php-mysqli php-fpm curl

EXPOSE	9000

COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY	./tools /var/www
COPY	./conf/index.html /var/www/index.html

CMD	bash /var/www/script.sh
