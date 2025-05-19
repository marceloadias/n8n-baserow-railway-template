FROM n8nio/n8n:latest

# Configurar diretório de trabalho
WORKDIR /usr/src/app

# Copiar arquivos de configuração
COPY docker-compose.yml .
COPY traefik/ ./traefik/

# Expor porta
EXPOSE 5678

# Configurar variáveis de ambiente
ENV N8N_HOST=${RAILWAY_PUBLIC_DOMAIN}
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_QUEUE_MODE=true
ENV N8N_QUEUE_BULL_REDIS_HOST=${REDIS_HOST}
ENV N8N_QUEUE_BULL_REDIS_PORT=${REDIS_PORT}
ENV N8N_QUEUE_BULL_REDIS_PASSWORD=${REDIS_PASSWORD}
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=${PGHOST}
ENV DB_POSTGRESDB_PORT=${PGPORT}
ENV DB_POSTGRESDB_DATABASE=${PGDATABASE}
ENV DB_POSTGRESDB_USER=${PGUSER}
ENV DB_POSTGRESDB_PASSWORD=${PGPASSWORD}

# Comando para iniciar
ENTRYPOINT ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"] 