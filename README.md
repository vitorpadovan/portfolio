# portfolio

- [Swagger](http://localhost:8080/swagger-ui/)

## Adicionando certificado

### Instalando no servidor o CERTBOT

- `sudo snap install core; sudo snap refresh core`
- `sudo snap install --classic certbot`
- `sudo ln -s /snap/bin/certbot /usr/bin/certbot`

### Criando o certificado

Necessário estar com o servidor web desligado

- `certbot certonly --standalone -d myminio.com --staple-ocsp -m test@yourdomain.io --agree-tos`

Arquivos serão salvos em `/etc/letsencrypt/live/`

### Converter para p12 os certificados

`openssl pkcs12 -export -out Cert.p12 -in cert.pem -inkey key.pem -passin pass:root -passout pass:root`
