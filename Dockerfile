FROM n8nio/n8n:latest

# Configurar diretório de trabalho
WORKDIR /usr/src/app

# Copiar arquivos de configuração
COPY docker-compose.yml .
COPY traefik/ ./traefik/

# Expor porta
EXPOSE 5678

# Comando para iniciar
CMD ["n8n", "start"] 