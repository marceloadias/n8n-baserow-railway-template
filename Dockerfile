FROM n8nio/n8n:latest

# Expor porta
EXPOSE 3000

# Comando para iniciar
CMD ["n8n", "start"] 