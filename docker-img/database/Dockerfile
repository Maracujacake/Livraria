# Use a imagem base do MySQL
FROM mysql:5.6

# Credenciais bd
ENV MYSQL_DATABASE Livraria
ENV MYSQL_USER chris
ENV MYSQL_PASSWORD 1234

# Copia o arquivo do banco para o docker
COPY /home/chris/AreaDeTrabalho/Webinho/Livraria/db/MySQL/create.sql /docker-entrypoint-initdb.d/

# Porta padrão de comunicação do sql
EXPOSE 3306
