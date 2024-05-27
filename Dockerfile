# Etapa de build usando uma imagem Maven com JDK 8
FROM maven:3.8.4-openjdk-8 AS build

# Copie o código fonte para o contêiner
COPY pom.xml /app/
COPY src /app/src

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Execute o Maven para compilar o projeto e empacotá-lo
RUN mvn clean package

# Etapa de execução usando uma imagem Tomcat com JDK 8
FROM tomcat:9.0.54-jdk8-openjdk

# Remova a aplicação padrão do Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copie o arquivo WAR gerado pelo Maven para o diretório webapps do Tomcat
COPY --from=build /app/target/Livraria.war /usr/local/tomcat/webapps/ROOT.war

# Exponha a porta 8080 do contêiner
EXPOSE 8080

# Inicie o Tomcat
CMD ["catalina.sh", "run"]
