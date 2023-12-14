# portfolio

- [Swagger](http://localhost:8080/swagger-ui/)

## 1. Variáveis de ambiente

- `fa_db_user` - Usuário do banco de dados
- `fa_db_pass` - Senha do banco de dados
- `fa_db_serv` - Servidor de banco de dados
- `fa_db_data` - Database name
- `cert_password` - Senha do certificado

## 2. Adicionando certificado

### 2.1. Instalando no servidor o CERTBOT

- `sudo snap install core; sudo snap refresh core`
- `sudo snap install --classic certbot`
- `sudo ln -s /snap/bin/certbot /usr/bin/certbot`

### 2.2. Criando o certificado

Necessário estar com o servidor web desligado

- `certbot certonly --standalone -d myminio.com --staple-ocsp -m test@yourdomain.io --agree-tos`

Arquivos serão salvos em `/etc/letsencrypt/live/`

### 2.3. Converter para p12 os certificados

- `openssl pkcs12 -export -out Cert.p12 -in cert.pem -inkey key.pem -passin pass:root -passout pass:root -password pass:YourPassword`

### 2.4. Localização final do certificado

O Certificado deve ficar em: `src/main/resources/keystore` e deve ter o nome de Cert.p12 para funcionar com esta aplicação

## 3. Referências

- [Hibernate – Many-to-Many example – join table + extra column (Annotation)](https://mkyong.com/hibernate/hibernate-many-to-many-example-join-table-extra-column-annotation/)
- [hibernate, join table with additional column](https://stackoverflow.com/questions/36129040/hibernate-join-table-with-additional-column)