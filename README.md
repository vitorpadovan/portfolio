# portfolio

- [Swagger](http://localhost:8080/swagger-ui/)

## Variáveis de ambiente

- `fa_db_user` - Usuário do banco de dados
- `fa_db_pass` - Senha do banco de dados
- `fa_db_serv` - Servidor de banco de dados
- `fa_db_data` - Database name
- `cert_password` - Senha do certificado

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

- `openssl pkcs12 -export -out Cert.p12 -in cert.pem -inkey key.pem -passin pass:root -passout pass:root -password pass:YourPassword`

### Localização final do certificado

O Certificado deve ficar em: `src/main/resources/keystore` e deve ter o nome de Cert.p12 para funcionar com esta aplicação
