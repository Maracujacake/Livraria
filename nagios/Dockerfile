# Use a imagem base do Nagios
FROM jasonrivers/nagios:latest

# Definição de timezone
ENV NAGIOS_TIMEZONE="America/Sao_Paulo"

RUN apt update;apt install -y vim nano

# Adicionando os arquivos necessários para inicialização
ADD livraria.cfg /opt/nagios/etc/objects/
ADD nagios.cfg /opt/nagios/etc/

# Define que a localização do sistema estará em branco, ou seja, não há nenhuma especificação
# Poderia especificar configurações regionais, por exemplo, data, hora, idioma, etc.
# Deixar em branco garante que não há problemas de compatibilidade
ENV LANG=""

# Porta padrão de comunicação do Nagios
EXPOSE 80
