# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esafar <esafar@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/13 12:22:12 by c2h6              #+#    #+#              #
#    Updated: 2022/10/21 16:26:04 by esafar           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Define from which image vm gonna be built
FROM	debian:buster

#Install nginx and openssl
RUN	apt-get update && apt-get install -y mariadb-server

EXPOSE	3306

COPY	./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY	./tools /var/www

RUN     service mysql start && mysql < /var/www/createdb.sql && rm -f /var/www/createdb.sql 

CMD	    /usr/bin/mysqld_safe
