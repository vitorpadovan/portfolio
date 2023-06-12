#!/bin/sh
cd /home/ubuntu/portfolio/DockerProject
docker compose down
certbot certonly --force-renew --standalone -d backend.vitorpadovan.com.br --staple-ocsp -m vitor.padovan89@gmail.com --agree-tos
cd /etc/letsencrypt/live/backend.vitorpadovan.com.br
openssl pkcs12 -export -out Cert.p12 -in cert.pem -inkey privkey.pem -passin pass:<senha> -passout pass:<senha> -password pass:<senha>
cp Cert.p12 /home/ubuntu/
cp Cert.p12 /portfolio/src/main/resources/keystore/
cd /home/ubuntu/portfolio/DockerProject
docker compose up -d --build
