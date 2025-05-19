# N8N + Baserow Railway Template

## Visão Geral
Este é um template para deploy do N8N com Baserow no Railway, incluindo:
- N8N Worker
- N8N Primary
- N8N Webhook Processor
- Redis
- PostgreSQL
- Baserow

## Objetivos
- Criar um template reutilizável para deploy do N8N com Baserow
- Garantir configuração correta de todos os serviços
- Facilitar o processo de deploy no Railway

## Requisitos Técnicos
- Railway CLI
- Docker
- Git

## Estrutura do Projeto
- `docker-compose.yml` - Configuração dos serviços
- `n8n/` - Configurações específicas do N8N
- `baserow/` - Configurações específicas do Baserow
- `.env.example` - Template de variáveis de ambiente
- `README.md` - Documentação do projeto 