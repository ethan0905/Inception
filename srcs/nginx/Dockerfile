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

FROM	debian:10
#		alias for debian:bullseye image version
RUN		apt-get update && apt-get install -y nginx openssl

WORKDIR	.

EXPOSE	443
