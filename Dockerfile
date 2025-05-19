FROM n8nio/n8n:latest

# Instalar dependências necessárias
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Configurar diretório de trabalho
WORKDIR /usr/src/app

# Copiar arquivos de configuração
COPY docker-compose.yml .
COPY traefik/ ./traefik/

# Expor porta
EXPOSE 5678

# Comando para iniciar
CMD ["n8n", "start"] 