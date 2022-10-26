# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esafar <esafar@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/13 12:22:12 by c2h6              #+#    #+#              #
#    Updated: 2022/10/26 10:21:49 by esafar           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN     apt-get update && apt-get install -y php7.3 php-mysqli php-fpm curl

EXPOSE	9000

COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY	./tools /var/www

CMD     bash /var/www/script.sh
