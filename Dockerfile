FROM node:18

# Instalar N8N globalmente
RUN npm install -g n8n

# Criar diretório da aplicação
WORKDIR /usr/src/app

# Expor porta
EXPOSE 3000

# Comando para iniciar
CMD ["n8n", "start"] 