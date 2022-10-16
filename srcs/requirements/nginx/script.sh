/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   script.sh                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: esafar <esafar@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/09 22:20:56 by esafar            #+#    #+#             */
/*   Updated: 2022/08/10 01:40:25 by esafar           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# openssl
# Utility to create a certificate
# req
# Primarily creates and processes certificate requests
# -x509
# this option outputs a self-signed certificate instead of a certificate request.
# This is typically used to generate a test certificate or a self-signed root CA
# -nodes
# if this option is specified, then if a private key is generated, it will not be encrypted
# -days n
# when the -x509 option is used, it specifies the number of days to certify the certificate
# -newkey argument
# this option creates a new certificate request and a new private key. The argument takes one of several forms.
# rsa:nbits , where nbits is the number of bits, generates an RSA key of size nbits
# -keyout filename
# this gives the filename to write the newly generated private key to
# -out filename
# This specifies the name of the output file to write to or the default stdout
# -subj argument
# Replaces the subject field of the input request with the specified data and outputs the modified request

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
	echo "Ngins: setting up ssl self certificate...";
	openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-keyout /ect/ssl/private/nginx.key \
		-out /etc/ssl/certs/nginx.crt \
		-subj "/C=RU/ST/Tatarstan/L=Kazan/O=wordpress/CN=esafar.42.fr";
	echo "nginx: ssl has finished setting up!";
fi

nginx -g 'daemon off;';
