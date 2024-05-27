# Livraria
CRUD de livros e editoras utilizando Java, JSP, MySQL e Docker

Caso alguma alteração seja feita, deve-se realizar:

```mvn clean package tomcat7:deploy```

Caso o banco de dados não exista, deve ser criado:

(No diretório do projeto): ```mysql -uchris 1234``` e ```source db/MySQL/create.sql```

A princípio deve funcionar.

- O tomcat utilizado foi o 9.0.88
- O B.D deve garantir permissão para os usuários de acesso: usuario: chris | senha: 1234
