# Use a imagem base do MySQL
FROM mysql:5.6

# Credenciais do banco de dados
ENV MYSQL_ROOT_PASSWORD t1
ENV MYSQL_DATABASE Livraria
ENV MYSQL_USER devops-t1
ENV MYSQL_PASSWORD=db

# Copia o arquivo do banco para o docker
COPY create.sql /docker-entrypoint-initdb.d

# Porta padrão de comunicação do sql
EXPOSE 3306
